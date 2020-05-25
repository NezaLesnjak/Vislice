% import model
% rebase('Vislice/base.tpl')

<h1>Vislice</h1>

<blockquote>
  Vislice so najboljša igra za preganjanje dolgčasa (poleg tetrisa).
  <small>Študentje</small>
</blockquote>

<h2> {{ igra.pravilni_del_gesla() }} </h2>

<h2> Napačnih ugibov: {{igra.nepravilni_ugibi()}} </h2>
  
% if poskus == 'Z':
  <h1> ZMAGAL SI </h1>
% elif poskus == 'X':
  <h1> Izgubil si </h1>
% else:

<form action="/igra/{{id_igre}}/" method="post">
  Črka: <input type='text' name='crka'>
  <button type="submit">Ugibaj novo črko</button>
</form>

% end

<img src="img/10.jpg" alt="obesanje">

<form action="/igra/" method="post">
    Črka: <input type='text' name='crka'>
  <button type="submit">Ugibaj novo črko</button>
</form>
