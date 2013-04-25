using Gtk;

class Demo : Window {
	public Demo() {
        this.title = "This is a window";
        set_default_size(250, 200);
        set_position(WindowPosition.CENTER);
		this.destroy.connect(Gtk.main_quit);
        var button = new Button.with_label("Click");
        add(button);
		show_all();
	}

	static void main (string[] args) {
		Gtk.init(ref args);
		new Demo();
		Gtk.main();
	}
}
