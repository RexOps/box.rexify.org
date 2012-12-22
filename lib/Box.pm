package Box;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
   my $self = shift;

   # Documentation browser under "/perldoc"
   #$self->plugin('PODRenderer');

   my @cfg = ("/etc/rex/box-server.conf", "/usr/local/etc/rex/box-server.conf", "box-server.conf");
   my $cfg;
   for my $file (@cfg) {
      if(-f $file) {
         $cfg = $file;
         last;
      }
   }
   $self->plugin('Config', file => $cfg);


   # Router
   my $r = $self->routes;

   # Normal route to controller
   $r->get('/')->to('frontpage#index');
   $r->get('/guide')->to('guide#index');
   $r->get('/roll_your_own')->to('guide#roll_your_own');
}

1;
