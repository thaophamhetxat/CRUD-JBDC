<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Edit</h2>
    <form method="post">
        <table class="table">
            <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>EMAIL</th>
                <th>ADDRESS</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input placeholder="nhập id" name="id" value="${customer.id}" readonly></td>
                <td><input placeholder="nhập tên" name="name" value="${customer.name}"></td>
                <td><input placeholder="nhập email" name="email" value="${customer.email}"></td>
                <td><input placeholder="nhập địa chỉ" name="address" value="${customer.address}"></td>
            </tr>

            </tbody>
        </table>
        <button type="submit" class="btn btn-success">Edit</button>
        <a href="/customer?action=quit" class="btn btn-secondary">Quit</a>
    </form>
</div>

</body>
</html>