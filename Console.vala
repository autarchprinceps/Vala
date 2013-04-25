class AsyncDemo {

    static async int adder (int a, int b) {
        return a + b;
    }

    static async void start () {
        int sum = yield adder (4, 5);
        stdout.printf ("Addition completed\n");
        stdout.printf ("Result was: %d\n", sum);
    }

    static void main () {
        start ();

        /* wait */
        var loop = new MainLoop (null, false);
        loop.run ();
    }
}
