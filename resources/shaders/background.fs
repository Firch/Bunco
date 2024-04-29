extern number time;
extern number spin_time;
extern vec4 colour_1;
extern vec4 colour_2;
extern vec4 colour_3;
extern number contrast;
extern number spin_amount;

#define PIXEL_SIZE_FAC 2560.
#define SPIN_EASE 0.5

vec4 effect( vec4 colour, Image texture, vec2 texture_coords, vec2 screen_coords )
{
    //Convert to UV coords (0-1) and floor for pixel effect
    number pixel_size = length(love_ScreenSize.xy)/PIXEL_SIZE_FAC;
    vec2 uv = (floor(screen_coords.xy*(1./pixel_size))*pixel_size - 0.5*love_ScreenSize.xy)/length(love_ScreenSize.xy) - vec2(0.12, 0.);
    number uv_len = length(uv);

    //Adding in a center swirl, changes with time. Only applies meaningfully if the 'spin amount' is a non-zero number
    number speed = (spin_time*SPIN_EASE*0.2) + 302.2;
    number new_pixel_angle = (atan(uv.y, uv.x)) + speed - SPIN_EASE*20.*(1.*spin_amount*uv_len + (1. - 1.*spin_amount));
    vec2 mid = (love_ScreenSize.xy/length(love_ScreenSize.xy))/2.;
    uv = (vec2((uv_len * cos(new_pixel_angle) + mid.x), (uv_len * sin(new_pixel_angle) + mid.y)) - mid);

	//Now add the paint effect to the swirled UV
    uv *= 30.;
    speed = time*(2.);
	vec2 uv2 = vec2(uv.x+uv.y);

    for(int i=0; i < 5; i++) {
		uv2 += sin(max(uv.x, uv.y)) + uv;
		uv  += 0.5*vec2(cos(5.1123314 + 0.353*uv2.y + speed*0.131121),sin(uv2.x - 0.113*speed));
		uv  -= 1.0*cos(uv.x + uv.y) - 1.0*sin(uv.x*0.711 - uv.y);
	}

    //Make the paint amount range from 0 - 2
    number contrast_mod = (0.25*contrast + 0.5*spin_amount + 1.2);
	number paint_res =min(2., max(0.,length(uv)*(0.035)*contrast_mod));
    number c1p = max(0.,1. - contrast_mod*abs(1.-paint_res));
    number c2p = max(0.,1. - contrast_mod*abs(paint_res));
    number c3p = 1. - min(1., c1p + c2p);

    vec4 ret_col = (0.3/contrast)*colour_1 + (1. - 0.3/contrast)*(colour_1*c1p + colour_2*c2p + vec4(c3p*colour_3.rgb, c3p*colour_1.a));

    return ret_col;
}