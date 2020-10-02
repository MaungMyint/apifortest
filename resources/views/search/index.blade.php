<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form  action="/api/check"  method="POST">
        @csrf
    <div class="row">
		<div class="form-group col-md-4 text-center my-5">
		</div>
		<div class="form-group col-md-5 my-5">
		 	<input type="type" name="name" placeholder="Category name" class="form-control">
               <span class="invalid-feedback" role="alert">
               	   <strong></strong>
               </span>
        </div>
        <br>
        <div class="row form-group align-right col-md-1 my-5">

       <input type="submit" class="btn btn-success btn-block" value="Save" >
        </div>
    </div>
    </form>
</body>
</html>
