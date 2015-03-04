
byte[] colors = {(byte)0x83d0c9,(byte)0x65c3ba,(byte)0x54b2a9,(byte)0x35a79c,(byte)0x009688,(byte)0x007777,(byte)0x006666,(byte)0x005555,(byte)0x004444,(byte)0x003333};
size(200,200);
for (int i=0;i<colors.length;i++){
fill(colors[i]);
line(10+i*10,10,20+i*10,20);
println(i);
}
