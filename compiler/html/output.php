
<title> Live html compiler using Php similar like w3schools </title>

<style type="text/css">
iframe { border: 1px green solid; }
textarea { resize:none; }
</style>

<div class="container" >
<div class="row">


</div>


</div>

<div class="row">
<div class="col-md-6">
<h2> Input </h2>
<form id="htmlcomplier" name="htmlcomplier" action="output2.php" target="view" method="post">
<div class="form-group">
<textarea class="form-control" required rows="24" id="code" Placeholder="Enter your code and Submit" name="code">
</textarea> 
<input class="btn btn-primary pull-right"  type="submit" value="Submit" name="submit" />
</div>
</form>
</div>
<div class="col-md-6">
<h2> Output </h2>
<div class="form-group">
<iframe width="100%" height="490px" frameborder="0"  name="view" id="view"></iframe>
</div>
</div>
</div>
</div>


