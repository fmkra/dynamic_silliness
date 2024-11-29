mod dynamic;
mod helpers;

#[starknet::interface]
trait ILayoutOodsContract<ContractState> {
    fn eval_oods_polynomial_inner(
        self: @ContractState,
        column_values: Span<felt252>,
        oods_values: Span<felt252>,
        constraint_coefficients: Span<felt252>,
        point: felt252,
        oods_point: felt252,
        trace_generator: felt252,
        dynamic_params: Span<u32>,
    ) -> felt252;
}

#[starknet::contract]
mod LayoutOodsContract {
    use super::ILayoutOodsContract;
    use super::dynamic::eval;
    use starknet::ContractAddress;

    #[storage]
    struct Storage {}

    #[abi(embed_v0)]
    impl LayoutOodsContract of ILayoutOodsContract<ContractState> {
        fn eval_oods_polynomial_inner(
            self: @ContractState,
            column_values: Span<felt252>,
            oods_values: Span<felt252>,
            constraint_coefficients: Span<felt252>,
            point: felt252,
            oods_point: felt252,
            trace_generator: felt252,
            dynamic_params: Span<u32>,
        ) -> felt252 {
            eval(
                column_values,
                oods_values,
                constraint_coefficients,
                point,
                oods_point,
                trace_generator,
                dynamic_params,
            )
        }
    }
}
