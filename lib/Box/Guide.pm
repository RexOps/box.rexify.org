package Box::Guide;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub index {
   my $self = shift;
   $self->render;
}

1;
