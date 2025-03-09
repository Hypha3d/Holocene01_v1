shader_type canvas_item;

uniform sampler2D dissolve_texture;
uniform float dissolve_amount : hint_range(0.0, 1.0) = 0.5;
uniform vec4 fade_color : source_color = vec4(1.0, 1.0, 1.0, 1.0);
uniform bool fade = false;
uniform bool inverted = false;

void fragment() {
    if (fade) {
        // Simple fade mode
        COLOR = vec4(fade_color.rgb, dissolve_amount);
    } else {
        // Dissolve mode
        float sample = texture(dissolve_texture, UV).r;
        if (inverted) {
            sample = 1.0 - sample;
        }

        // Create a smoother transition band
        float edge_width = 0.1;
        float threshold = dissolve_amount;

        // Calculate the alpha using smoothstep for a gradual transition
        float alpha = 1.0 - smoothstep(threshold - edge_width, threshold + edge_width, sample);

        COLOR = vec4(fade_color.rgb, alpha);
    }
}