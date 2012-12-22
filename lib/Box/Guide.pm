package Box::Guide;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub index {
   my $self = shift;
   $self->render;
}

sub roll_your_own {
   my $self = shift;
   $self->render;
}

1;
