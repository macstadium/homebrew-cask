cask 'orka' do
  version '1.3.0,f86fecd'
  sha256 '240dc6f5177471ba46564fa691f46b4361381b12433d5310d4f8cea097debe88'

  # cli-builds-public.s3-eu-west-1.amazonaws.com/official/ was verified as official when first introduced to the cask
  url "https://cli-builds-public.s3-eu-west-1.amazonaws.com/official/1.3.0/f86fecd/macos/orka.zip"
  appcast 'https://orkadocs.macstadium.com/docs/downloads'
  name 'Orka CLI'
  homepage 'https://orkadocs.macstadium.com/docs'

  binary 'orka'
end
