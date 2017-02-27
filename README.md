# TensorFlow


# Docker Env
```bash
docker-machine ls
docker-machine create --driver virtualbox default
```

# Run
```bash
docker run -it -p 8888:8888 tensorflow/tensorflow
```

# Jupyter Login
```html
http://<dokcerIp>:88888
secret
```

# TensorFlow Tutorials
```html
https://www.tensorflow.org/tutorials/mandelbrot
secret
```

# Jupyter PassWord Setting
```
~/.jupyter/jupyter_notebook_config.py 
```

```
import os
from IPython.lib import passwd

c.NotebookApp.ip = '*'
c.NotebookApp.port = int(os.getenv('PORT', 8888))
c.NotebookApp.open_browser = False
c.MultiKernelManager.default_kernel_name = 'python2'

# sets a password if PASSWORD is set in the environment
if 'PASSWORD' in os.environ:
  c.NotebookApp.password = passwd(os.environ['PASSWORD'])
  del os.environ['PASSWORD']

# Add password secret !!
c.NotebookApp.password = 'sha1:fb872cb92892:8c4236574a12de1cf23b04f6b705ac6cfdc3cc06'
```

