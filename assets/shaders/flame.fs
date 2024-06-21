#if defined(VERTEX) || __VERSION__ > 100 || defined(GL_FRAGMENT_PRECISION_HIGH)
	#define MY_HIGHP_OR_MEDIUMP highp
#else
	#define MY_HIGHP_OR_MEDIUMP mediump
#endif


extern MY_HIGHP_OR_MEDIUMP float time;
extern MY_HIGHP_OR_MEDIUMP float amount;
extern MY_HIGHP_OR_MEDIUMP vec4 texture_details;
extern MY_HIGHP_OR_MEDIUMP vec2 image_details;
extern MY_HIGHP_OR_MEDIUMP vec4 colour_1;
extern MY_HIGHP_OR_MEDIUMP vec4 colour_2;
extern MY_HIGHP_OR_MEDIUMP float id;

#define PIXEL_SIZE_FAC 2560.
#define WHITE vec4(1.,1.,1.,1.)


vec4 effect( vec4 colour, Image texture, vec2 texture_coords, vec2 screen_coords )
{
    float intensity = 1.0*min(10.,amount);
    if(intensity < 0.1){
        return vec4(0.,0.,0.,0.);
    }

    //Convert to UV coords (0-1) and floor for pixel effect
    vec2 uv = (((texture_coords)*(image_details)) - texture_details.xy*texture_details.ba)/texture_details.ba - 0.5;
    vec2 floored_uv = (floor((uv*PIXEL_SIZE_FAC)))/PIXEL_SIZE_FAC;
    vec2 uv_scaled_centered = (floored_uv);
    uv_scaled_centered += uv_scaled_centered*0.01*(sin(-1.123*floored_uv.x + 0.2*time)*cos(5.3332*floored_uv.y + time*0.931));
    vec2 flame_up_vec = vec2(0., mod(4.*time, 10000.) - 5000. + mod(1.781*id, 1000.) );

    float scale_fac = (7.5 + 3./(2. + 2.*intensity));
    vec2 sv = uv_scaled_centered*scale_fac + flame_up_vec;
    float speed = mod(20.781*id, 100.) + 1.*sin(time+id)*cos(time*0.151+id);
	vec2 sv2 = vec2(0.,0.);

    for(int i=0; i < 5; i++) {
		sv2 += sv + 0.05*sv2.yx*(mod(float(i), 2.)>1.?-1.:1.) + 0.3*(cos(length(sv)*0.411) + 0.3344*sin(length(sv)) - 0.23*cos(length(sv)));
		sv  += 0.5*vec2(
                    cos(cos(sv2.y) + speed*0.0812)*sin(3.22 + (sv2.x) - speed*0.1531),
                    sin(-sv2.x*1.21222 + 0.113785*speed)*cos(sv2.y*0.91213 - 0.13582*speed));
	}    

    //Make the smoke amount range from 0 - 2
	float smoke_res = max(0.,((length((sv - flame_up_vec)/scale_fac*5.)+ 0.1*(length(uv_scaled_centered) - 0.5))*(2./(2.+ intensity*0.2)))) ;
    smoke_res = intensity < 0.1 ? 1.: smoke_res + max(0., 2. - 0.3*intensity)*max(0., 2.*(uv_scaled_centered.y - 0.5)*(uv_scaled_centered.y - 0.5));

    if(abs(uv.x) > 0.4){
        smoke_res = smoke_res + 10.*(abs(uv.x) - 0.4);
    }
    if(length((uv - vec2(0., 0.1))*vec2(0.19, 1.)) < min(0.1, intensity*0.5) && smoke_res > 1.){
        smoke_res = smoke_res + min(8.5,intensity*10.)*(length((uv - vec2(0., 0.1))*vec2(0.19, 1.))-0.1);
    }

    vec4 ret_col = colour_1;
    if(smoke_res > 1.){
        ret_col.a = 0.;
    }else{
        if( uv.y < 0.12){
            ret_col = ret_col*(1. - 0.5*(0.12 - uv.y)) + 2.5*(0.12 - uv.y)*colour_2;
            ret_col += ret_col*(-2.+0.5*intensity*smoke_res)*(0.12 - uv.y);
        }
        ret_col.a = 1.;
    }

    return ret_col;
}