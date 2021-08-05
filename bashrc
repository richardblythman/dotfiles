function jpt(){
        jupyter notebook --no-browser --ip=0.0.0.0 --port=$1
}

function tb(){
        tensorboard --logdir=$1 --host=0.0.0.0
}

alias rsync='rsync -v --progress --stats'