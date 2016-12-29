extern crate capnp;

#[macro_use]
extern crate rustfbp;

agent! {
    input(input: any),
    output(output: any),
    option(prim_text),
    fn run(&mut self) -> Result<Signal> {

        // Get the path
        let mut msg = try!(self.input.input.recv());

        let mut opt = self.recv_option();
        let text: prim_text::Reader = try!(opt.read_schema());

        println!("{}\naction: {}", try!(text.get_text()), msg.action);

        let _ = self.output.output.send(msg);

        Ok(End)

    }

}
