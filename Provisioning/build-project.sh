#!/usr/bin/env bash
# xcodebuild \
#   -project "*path/fileName*.xcodeproj" \
#   -target "*targetName*" \
#   -sdk "*targetSDK*" \
#   -configuration *buildConfig* \
#   CODE_SIGN_IDENTITY="*NameOfCertificateIdentity*" \
#   PROVISIONING_PROFILE="*ProvisioningProfileName" \
#   OTHER_CODE_SIGN_FLAGS="--keychain *keyChainName*"
xcodebuild \
 -project "Loop.xcodeproj" \
 -target "iphoneos" \
 -sdk "*targetSDK*" \
 -configuration *buildConfig* \
 CODE_SIGN_IDENTITY="*NameOfCertificateIdentity*" \
 PROVISIONING_PROFILE="*ProvisioningProfileName" \
 OTHER_CODE_SIGN_FLAGS="--keychain *keyChainName*"
