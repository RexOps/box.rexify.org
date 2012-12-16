package Box::Frontpage;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub index {
   my $self = shift;

   my @boxes = ({
      name => "Foo",
      url  => "http://...",
      size => 200,
   });

   $self->render(boxes => \@boxes);
}

1;
