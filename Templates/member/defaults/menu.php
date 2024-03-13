 <?php if (isset($_SESSION['user']) && $_SESSION['user']->role == 'member'): ?>

<nav class="navbar navbar-expand-lg bg-black text-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/member/home">
            Home
        </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#myNavbar" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>


        <div class="collapse navbar-collapse text-white" id="myNavbar">
            <ul class="navbar-nav">

                <li class="nav-item">
                    <a class="nav-link" href="/member/categories">Animes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/member/contact">contact</a>
                </li>
            </ul>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/member/user">profiel</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">uitloggen</a>
                </li>
             <?php endif; ?>

        </div>
    </div>
</nav>

