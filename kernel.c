// kernel.c
void kernel_main() {
    char* video_memory = (char*) 0xb8000; // text mode
    const char* message = "Welcome to Dylatosh OS!";
    int i = 0;
    while(message[i] != '\0') {
        video_memory[i*2] = message[i]; // character
        video_memory[i*2+1] = 0x0F;    // white on black
        i++;
    }
    while(1); // hang
}
