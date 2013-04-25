using Gtk;

class Demo : Window {
	private Paned layout;
	private Button button;
	private Entry textField;

	public Demo() {
        this.title = "Demo";
        set_default_size(250, 60);
        set_position(WindowPosition.CENTER);

		this.destroy.connect(Gtk.main_quit);
		
		textField = new Entry();
		layout.add(textField);
        button = new Button.with_label("Click");
		button.clicked.connect(() => {
			button.label = textField.buffer.text;
		});
        layout.add(button);
		add(layout);
		show_all();
	}

	static void main (string[] args) {
		Gtk.init(ref args);
		new Demo();
		Gtk.main();
	}
}
