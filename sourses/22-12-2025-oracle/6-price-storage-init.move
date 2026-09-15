// Script hash: [will be generated after compilation]
// Price Storage Initialization Proposal

script {
    use cedra_framework::cedra_governance;
    use cedra_framework::price_storage;

    fun main(proposal_id: u64) {
        let framework_signer = cedra_governance::resolve_multi_step_proposal(proposal_id, @0x1, x"");

        price_storage::init_price_storage(
            &framework_signer
        );
    }
}
