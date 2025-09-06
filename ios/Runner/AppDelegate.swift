import Flutter
import UIKit
import Clibgit2

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // NOTE: avoid libgit2 symbol errors
    print([
      git_clone,
      git_clone_init_options,
      git_commit_id,
      git_commit_free,
      git_cred_ssh_key_new,
      git_cred_userpass_plaintext_new,
      git_fetch_init_options,
      git_error_last,
      git_libgit2_init,
      git_oid_tostr_s,
      git_reference_free,
      git_reference_peel,
      git_reference_shorthand,
      git_remote_free,
      git_remote_init_callbacks,
      git_remote_lookup,
      git_remote_url,
      git_repository_head,
      git_repository_open,
    ])
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
