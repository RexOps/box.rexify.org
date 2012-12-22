package Box::Frontpage;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub index {
   my $self = shift;

   my $content = eval { local(@ARGV, $/) = ("./boxes.conf"); <>; };
   my $ref_boxes  = eval 'package Box::Config::Loader;'
                        . "no warnings; $content";

   die "Couldn't load configuration file: $@" if(!$ref_boxes && $@);
   die "Config file invalid. Did not return ARRAY reference." if( ref($ref_boxes) ne "ARRAY" );

   $self->render(boxes => $ref_boxes);
}

1;
