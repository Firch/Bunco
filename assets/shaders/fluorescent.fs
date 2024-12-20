#if defined(VERTEX) || __VERSION__ > 100 || defined(GL_FRAGMENT_PRECISION_HIGH)
    #define MY_HIGHP_OR_MEDIUMP highp
#else
    #define MY_HIGHP_OR_MEDIUMP mediump
#endif

// change this variable name to your Edition's name
// YOU MUST USE THIS VARIABLE IN THE vec4 effect AT LEAST ONCE
// ^^ CRITICALLY IMPORTANT (IDK WHY)
extern MY_HIGHP_OR_MEDIUMP vec2 fluorescent;

extern MY_HIGHP_OR_MEDIUMP number dissolve;
extern MY_HIGHP_OR_MEDIUMP number time;
extern MY_HIGHP_OR_MEDIUMP vec4 texture_details;
extern MY_HIGHP_OR_MEDIUMP vec2 image_details;
extern bool shadow;
extern MY_HIGHP_OR_MEDIUMP vec4 burn_colour_1;
extern MY_HIGHP_OR_MEDIUMP vec4 burn_colour_2;

// the following four vec4 are (as far as I can tell) required and shouldn't be changed

vec4 dissolve_mask(vec4 tex, vec2 texture_coords, vec2 uv)
{
    if (dissolve < 0.001) {
        return vec4(shadow ? vec3(0.,0.,0.) : tex.xyz, shadow ? tex.a*0.3: tex.a);
    }

    float adjusted_dissolve = (dissolve*dissolve*(3.-2.*dissolve))*1.02 - 0.01; //Adjusting 0.0-1.0 to fall to -0.1 - 1.1 scale so the mask does not pause at extreme values

    float t = time * 10.0 + 2003.;
    vec2 floored_uv = (floor((uv*texture_details.ba)))/max(texture_details.b, texture_details.a);
    vec2 uv_scaled_centered = (floored_uv - 0.5) * 2.3 * max(texture_details.b, texture_details.a);
    
    vec2 field_part1 = uv_scaled_centered + 50.*vec2(sin(-t / 143.6340), cos(-t / 99.4324));
    vec2 field_part2 = uv_scaled_centered + 50.*vec2(cos( t / 53.1532),  cos( t / 61.4532));
    vec2 field_part3 = uv_scaled_centered + 50.*vec2(sin(-t / 87.53218), sin(-t / 49.0000));

    float field = (1.+ (
        cos(length(field_part1) / 19.483) + sin(length(field_part2) / 33.155) * cos(field_part2.y / 15.73) +
        cos(length(field_part3) / 27.193) * sin(field_part3.x / 21.92) ))/2.;
    vec2 borders = vec2(0.2, 0.8);

    float res = (.5 + .5* cos( (adjusted_dissolve) / 82.612 + ( field + -.5 ) *3.14))
    - (floored_uv.x > borders.y ? (floored_uv.x - borders.y)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.y > borders.y ? (floored_uv.y - borders.y)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.x < borders.x ? (borders.x - floored_uv.x)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.y < borders.x ? (borders.x - floored_uv.y)*(5. + 5.*dissolve) : 0.)*(dissolve);

    if (tex.a > 0.01 && burn_colour_1.a > 0.01 && !shadow && res < adjusted_dissolve + 0.8*(0.5-abs(adjusted_dissolve-0.5)) && res > adjusted_dissolve) {
        if (!shadow && res < adjusted_dissolve + 0.5*(0.5-abs(adjusted_dissolve-0.5)) && res > adjusted_dissolve) {
            tex.rgba = burn_colour_1.rgba;
        } else if (burn_colour_2.a > 0.01) {
            tex.rgba = burn_colour_2.rgba;
        }
    }

    return vec4(shadow ? vec3(0.,0.,0.) : tex.xyz, res > adjusted_dissolve ? (shadow ? tex.a*0.3: tex.a) : .0);
}

float distanceBetweenColors(vec3 colorA, vec3 colorB) {
    return length(clamp(colorA, 0.0, 1.0) - clamp(colorB, 0.0, 1.0));
}

vec3 rgb2hsv(vec3 c)
{
    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
    vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));
    vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));

    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

vec3 hsv2rgb(vec3 c)
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

vec3 hueshift(vec3 rgb, float adjustment)
{
    vec3 hsv = rgb2hsv(rgb);
    hsv.x += adjustment;
    return hsv2rgb(hsv);
}

vec3 saturation(vec3 rgb, float adjustment)
{
    // Algorithm from Chapter 16 of OpenGL Shading Language
    const vec3 W = vec3(0.1125, 0.2154, 0.0221);
    vec3 intensity = vec3(dot(rgb, W));
    return mix(intensity, rgb, adjustment);
}

// this is what actually changes the look of card
vec4 effect( vec4 colour, Image texture, vec2 texture_coords, vec2 screen_coords )
{
    // turns the texture into pixels
    vec4 tex = Texel(texture, texture_coords);
    vec3 pixelColor = tex.rgb;
    vec2 uv = (((texture_coords)*(image_details)) - texture_details.xy*texture_details.ba)/texture_details.ba;

    // Dummy, doesn't do anything but at least it makes the shader useable
    if (uv.x > uv.x * 2){
        uv = fluorescent;
    }

    vec3 targetColors[6] = vec3[6](
        vec3(1.0, 0.0, 0.0), // Red
        vec3(0.0, 1.0, 0.0), // Green
        vec3(0.0, 0.0, 1.0), // Blue
        vec3(1.0, 1.0, 0.0), // Yellow
        vec3(0.0, 1.0, 1.0), // Cyan
        vec3(1.0, 0.0, 1.0)  // Magenta
    );

    float sharpnessMultipliers[6] = float[6](
        3.0, // Red
        3.0, // Green
        3.0, // Blue
        3.0, // Yellow
        3.0, // Cyan
        3.0  // Magenta
    );

    float effect = 0.7 + (0.3 * clamp(cos(sin(uv.y * 8.24 + fluorescent.x * 6.0) + sin(uv.x * 6.12 + fluorescent.x * 2.0) * fluorescent.x * uv.y * 3.15), 0.0, 1.0));

    vec3 grayscaleColor = vec3(1.0, 1.0, 1.0) * (pixelColor.r + pixelColor.g + pixelColor.b) / 3.0; // Get grayscale

    grayscaleColor = vec3(0.0, 0.0, 0.0);

    // Initialize variables for blended effect
    float totalWeight = 0.0;
    vec3 blendedColor = vec3(0.0);

    // Iterate through all target colors
    for (int i = 0; i < 6; i++) {

        float distance = distanceBetweenColors(pixelColor, targetColors[i]);
        float weight = exp(-distance * sharpnessMultipliers[i]); // Exponential weight based on distance
        totalWeight += weight;

        // Saturate and weight the contribution of the current target color
        vec3 saturatedColor = saturation(pixelColor, 3.0);
        blendedColor += saturatedColor * weight;
    }

    // Normalize the blended result
    if (totalWeight > 0.0) {
        blendedColor /= totalWeight;
    }

    // Blend with grayscale
    float desaturationFactor = smoothstep(0.0, 1.0, totalWeight); // Adjust factor based on weight

    blendedColor = rgb2hsv(blendedColor);

    blendedColor.z *= desaturationFactor * blendedColor.y;
    blendedColor.y = 1.0;

    blendedColor = hsv2rgb(blendedColor);

    vec3 tintedColor = pixelColor * vec3(0.28, 0.35, 0.49);

    tintedColor -= (tintedColor * (effect - 1.0)) * 0.15;

    vec3 finalColor = blendedColor * effect + tintedColor;

    // required
    return dissolve_mask(vec4(finalColor.rgb, tex.a * tex.a), texture_coords, uv);
}

// for transforming the card while your mouse is on it
extern MY_HIGHP_OR_MEDIUMP vec2 mouse_screen_pos;
extern MY_HIGHP_OR_MEDIUMP float hovering;
extern MY_HIGHP_OR_MEDIUMP float screen_scale;

#ifdef VERTEX
vec4 position( mat4 transform_projection, vec4 vertex_position )
{
    if (hovering <= 0.){
        return transform_projection * vertex_position;
    }
    float mid_dist = length(vertex_position.xy - 0.5*love_ScreenSize.xy)/length(love_ScreenSize.xy);
    vec2 mouse_offset = (vertex_position.xy - mouse_screen_pos.xy)/screen_scale;
    float scale = 0.2*(-0.03 - 0.3*max(0., 0.3-mid_dist))
                *hovering*(length(mouse_offset)*length(mouse_offset))/(2. -mid_dist);

    return transform_projection * vertex_position + vec4(0,0,0,scale);
}
#endif