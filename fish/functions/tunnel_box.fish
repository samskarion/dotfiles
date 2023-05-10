function tunnel_box --wraps='ssh -L 7860:localhost:7860 santiama@192.168.1.232' --description 'alias tunnel_box=ssh -L 7860:localhost:7860 santiama@192.168.1.232'
  ssh -L 7860:localhost:7860 santiama@192.168.1.232 $argv
        
end
