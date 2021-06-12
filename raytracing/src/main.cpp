#include <iostream>
#include "sphere.h"
#include "hitable_list.h"
#include "float.h"

// general rendering - computing process
// 1. visibility between a point in space (visibility problem)
// 2. first visible surface in a given direction or the visibility between two points (used for shadowing)

vec3 color(const ray& r, hitable *world) {
	hit_record rec;
	if(world->hit(r, 0.0, MAXFLOAT, rec)) {
		return 0.5*vec3(rec.normal.x()+1, rec.normal.y()+1, rec.normal.z()+1);
	}
	else {
		vec3 unit_direction = unit_vector(r.direction());
		// y is from -1 < y < 1 
		// scale it to 0 < t < 1
		float t = 0.5*(unit_direction.y() + 1.0);
		// blend from blue to white
		// t = 1.0 blue
		// t = 0.0 white
		// blended_value = (1-t)*start_value + t*end_value
		return (1.0-t)*vec3(1.0, 1.0, 1.0) + t*vec3(0.5, 0.7, 1.0);
	}
}

// y-axis goes up
// x-axis to the right
// z-axis is out the screen
int main() {
	// pixel size
	int nx = 200;
	int ny = 100;
	std::cout << "P3\n" << nx << " " << ny << "\n255\n";
	// screen
	vec3 lower_left_corner(-2.0, -1.0, -1.0);
	vec3 horizontal(4.0, 0.0, 0.0);
	vec3 vertical(0.0, 2.0, 0.0);
	vec3 origin(0.0, 0.0, 0.0);
	hitable *list[2];
	list[0] = new sphere(vec3(0,0,-1), 5.0);
	list[1] = new sphere(vec3(0,-100.5,-1), 100);
	hitable *world = new hitable_list(list, 2);
	for (int j = ny-1; j >= 0; j--) {
		for (int i = 0; i < nx; i++) {
			float u = float(i) / float(nx);
			float v = float(j) / float(ny);
			ray r(origin, lower_left_corner + u*horizontal + v*vertical);
			vec3 p = r.point_at_parameter(2.0);
			vec3 col = color(r, world);
			int ir = int(255.99*col[0]);
			int ig = int(255.99*col[1]);
			int ib = int(255.99*col[2]);
			std::cout << ir << " " << ig << " " << ib << "\n";
		}
	}
	


}
