function head = htmlhead(text, refresh)
global tasks
global webserver

head{1} = ['<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 ' ...
    'Strict//EN" "DTD/xhtml1-strict.dtd">'];
head{2} = ['<html xmlns="http://www.w3.org/1999/xhtml" ' ...
    'xml:lang="en" lang="en">'];
head{3} = ' <head>';
head{4} = ['   <meta http-equiv="Content-Type" ' ...
        'content="text/html; charset=utf-8" />'];
if nargin == 2 && refresh == 1
    head{5} = ['   <meta http-equiv="Refresh" content="30; URL="' ...
	webserver.html '/uploads/' tasks{1} '.html" />'];
    k = 1;
else
    k = 0;
end
head{5 + k} = ['   <title>' text '</title>'];
head{6 + k} = '</head>';
head{7 + k} = ' <body>';
