script {
    use cedra_framework::whitelist;
    use cedra_framework::cedra_governance;
    fun main(proposal_id: u64) {
      let framework_signer = cedra_governance::resolve(proposal_id, @0x1);
        whitelist::add_asset(
            &framework_signer,
            @0x35c82a4fbf233f793b49de20212872ada755073f2a5b74c00ab4661da1220685,                  
            b"usdct",          
            b"USDCT"                  
        );
    }
}
