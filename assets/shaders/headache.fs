#if defined(VERTEX) || __VERSION__ > 100 || defined(GL_FRAGMENT_PRECISION_HIGH)
    #define MY_HIGHP_OR_MEDIUMP highp
#else
    #define MY_HIGHP_OR_MEDIUMP mediump
#endif

// change this variable name to your Edition's name
// YOU MUST USE THIS VARIABLE IN THE vec4 effect AT LEAST ONCE
// ^^ CRITICALLY IMPORTANT (IDK WHY)
extern MY_HIGHP_OR_MEDIUMP vec3 headache;

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

vec4 layerTexel( Image texture, vec2 uv, int frame, vec2 displace, float parallax, bool tile ) {
    vec2 duv = uv + (displace * parallax * 0.0001);
    vec4 col = vec4(0.0);
    if (tile) {
        duv = mod(duv + vec2(headache.z * 10.0) / image_details, vec2(69.0 / image_details.x, 69.0 / image_details.y));
        vec2 fuv = duv + (vec2((frame * 71.0) + 1.0, 1.0) / image_details);
        col = Texel(texture, fuv);
    }
    else {
        if ((duv.x >= 0.0) && (duv.x <= 71.0 / image_details.x) && (duv.y >= 0.0) && (duv.y <= 1.0)) {
            vec2 fuv = duv + (vec2(frame * 71.0, 0.0) / image_details);
            col = Texel(texture, fuv);
        }
    }
    return col;
}

vec4 alphaBlend( vec4 source, vec4 destination ) {
    float outAlpha = source.a + destination.a * (1.0 - source.a);
    vec3 outColor = (source.rgb * source.a + destination.rgb * destination.a * (1.0 - source.a)) / outAlpha;

    return vec4(outColor, outAlpha);
}

vec4 effect( vec4 colour, Image texture, vec2 texture_coords, vec2 screen_coords )
{
    vec4 tex = Texel(texture, texture_coords);
    vec4 maskTex = layerTexel(texture, texture_coords, 1, headache.xy, 0.0, false);

    vec4 blendedTex = tex;

    vec3 pink = vec3(1.0, 0.0, 0.45);

    float mult = 5.0;
    float steps = 0.25;

    for (float i = 0; i <= 1; i += steps) {
        vec4 layerTex = layerTexel(texture, texture_coords, 4, headache.xy, 14.0 + mult - i * mult, true);
        layerTex.a *= maskTex.a;
        layerTex.a *= i * 0.3;
        layerTex.rgb = mix(layerTex.rgb, pink, i * i);
        blendedTex = alphaBlend(layerTex, blendedTex);
    }

    for (float i = 0; i <= 1; i += steps) {
        vec4 layerTex = layerTexel(texture, texture_coords, 3, headache.xy, 5.0 + mult - i * mult, false);
        layerTex.a *= maskTex.a;
        layerTex.a *= i;
        layerTex.rgb = mix(layerTex.rgb, pink, i * i);
        blendedTex = alphaBlend(layerTex, blendedTex);
    }

    for (float i = 0; i <= 1; i += steps) {
        vec4 layerTex = layerTexel(texture, texture_coords, 2, headache.xy, 2.5 + mult - i * mult, false);
        layerTex.a *= maskTex.a;
        layerTex.a *= i;
        layerTex.rgb = mix(layerTex.rgb, pink, i * i);
        blendedTex = alphaBlend(layerTex, blendedTex);
    }

    vec2 uv = (((texture_coords) * (image_details)) - texture_details.xy * texture_details.ba) / texture_details.ba;
    // Dummy, doesn't do anything but at least it makes the shader useable
    if (uv.x > uv.x * 2){
        uv = headache.xy;
    }
    return dissolve_mask(blendedTex, texture_coords, uv);
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