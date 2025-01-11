extern vec2 position;  // The center of the pinch effect (in screen-space pixels)
extern float radius;   // The radius of the effect (in pixels)
extern float strength; // The strength of the pinch effect
extern vec2 screen_size; // The size of the screen (in pixels)

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {
    vec2 norm_pos = position / screen_size;  // Convert position to normalized coordinates
    vec2 dir = texture_coords - norm_pos;
    float dist = length(dir * screen_size); // Convert to screen-space distance

    if (dist < radius) {
        float factor = 1.0 - (dist / radius);
        factor = 1.0 - strength * pow(factor, 2.0);
        texture_coords = norm_pos + dir * factor;
    }

    return color * Texel(texture, texture_coords);
}
