use <Write.scad>

width=15;
step=0.5;
start=10/step;
stop=15/step;
textthickness=1;
rotate([0,-90,0])
for ( i = [0 : stop-start] ){
    translate([0, i*width, 0]){
      cube([width,width,start*step+i*step]);
      translate([width,width/2,width/3])rotate([90,0,90])
        if(ceil(i*step)==i*step)write(str(start*step+i*step),t=textthickness*2,h=8,center=true, font="orbitron.dxf");
    }
}
