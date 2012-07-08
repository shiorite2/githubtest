mkdir shiori.make-bump.shka.net
ls -la
cd shiori.make-bump.shka.net
mkdir logs
ls -la
svn checkout http://svn.shka.net/make-bump/trunk/make-bump-app/ .
ls -la
sv st
svn st
ls -la
cd shiori.make-bump.shka.net
svn st
svn add ./*
svn revert
svn revert ./*
svn st
svn add ./*.php
svn add ./*/*.php
svn up
svn st
svn commit -m 'phpファイルを３'
exit
ls -la
cd shiori.make-bump.shka.net
svn up
exit
mkdir shiori.view-bump.shka.net
mkdir shiori.view.make-bump.shka.net
cd shiori.view.make-bump.shka.net
svn checkout http://svn.shka.net/make-bump/trunk/make-bump-app/ .
svn checkout http://svn.shka.net/make-bump/trunk/views/ .
[shiori@www41017u shiori.view.make-bump.shka.net]$ svn checkout http://svn.shka.net/make-bump/trunk/make-bump-app/ .
A    app
A    app/control.php
A    app/db.php
A    public
A    public/control.php
A    public/index.php
 U   .
リビジョン 10 をチェックアウトしました。
[shiori@www41017u shiori.view.make-bump.shka.net]$ svn checkout http://svn.shka.net/make-bump/trunk/views/ .
svn: '.' は既に、異なる URL にあるリポジトリ用の作業コピーとなっています
exit
cd shiori.make-bump.shka.net
svn up
svn checkout http://svn.shka.net/make-bump/trunk/views/ .
svn up
exit
mkdir shiori.view.make-bump.shka.net
cd shiori.view.make-bump.shka.net
svn checkout http://svn.shka.net/make-bump/trunk/views/ .
svn up
exit

svn up
