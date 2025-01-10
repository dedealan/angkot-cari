<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login</title>
    <!-- Custom fonts for this template-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Custom styles for this template-->
    <style>
        .login-card {
            width: 400px;
            height: 400px;
            border-radius: 1rem;
        }

        .login-card .card-body {
            padding: 2rem;
        }

        .login-card .form-control {
            border-radius: 0.5rem;
        }

        .login-card .btn-primary {
            border-radius: 0.5rem;
        }

        .login-card .text-center a {
            color: #007bff;
        }

        .login-card .text-center a:hover {
            color: #0056b3;
            text-decoration: underline;
        }

        .alert-container {
            width: 400px;
            margin: 0 auto;
            margin-bottom: 10px;
        }
    </style>
</head>

<body class="bg-gradient-dark d-flex align-items-center justify-content-center" style="height: 100vh;">
    <div class="container">
        @if ($errors->any())
            <div class="alert alert-danger text-center alert-container">
                @foreach ($errors->all() as $error)
                    {{ $error }}
                @endforeach
            </div>
        @endif
        <div class="row justify-content-center">
            <div class="col-md-6 d-flex justify-content-center">
                <div class="card shadow-lg login-card">
                    <div class="card-body">
                        <div class="text-center mb-4">
                            <h1 class="h4 text-gray-900">Login</h1>
                        </div>
                        <form action="{{ route('login.action') }}" method="POST">
                            @csrf
                            <div class="mb-3">
                                <label for="email" class="form-label">Gmail Anda</label>
                                <input name="email" type="email" class="form-control" id="email"
                                    placeholder="Enter Email Address...">
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Sandi Anda</label>
                                <input name="password" type="password" class="form-control" id="password"
                                    placeholder="Password">
                            </div>
                            <div class="mb-3 form-check">
                                <input name="remember" type="checkbox" class="form-check-input" id="remember">
                                <label class="form-check-label" for="remember">Ingatan Saya</label>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Masuk</button>
                        </form>
                        <hr>
                        <div class="text-center">
                            <a class="small" href="{{ route('register') }}">Buat Akun!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous">
    </script>
</body>

</html>
