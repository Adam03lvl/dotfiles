require('refactoring').setup({
    prompt_func_return_type = {
        go = true,
        java = true,

        cpp = true,
        c = true,
        h = true,
        hpp = true,
        cxx = true,
    },
    prompt_func_param_type = {
        go = true,
        java = true,

        cpp = true,
        c = true,
        h = true,
        hpp = true,
        cxx = true,
    },
    printf_statements = {},
    print_var_statements = {},
    show_success_message = true, -- shows a message with information about the refactor on success
})
