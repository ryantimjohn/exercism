module hello_world
  implicit none
contains

  function hello()
    character(13) :: hello
    hello = "Hello, World!"
    return
  end function hello

end module hello_world
