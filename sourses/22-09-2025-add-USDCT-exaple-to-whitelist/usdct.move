module creator::usdct {
    use cedra_framework::stablecoin;
    use std::string;
     fun init_module(signer: &signer) {
        stablecoin::create(
            signer,
            b"USDCT",
            string::utf8(b"USDCT"),
            6,
            string::utf8(b"https://example.com/usdct.png"),
            string::utf8(b"https://example.com/")
        );
    }
}
