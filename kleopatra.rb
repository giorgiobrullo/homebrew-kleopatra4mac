# typed: strict
# frozen_string_literal: true

class Kleopatra < Formula
  desc "Certificate manager and GUI for OpenPGP and CMS cryptography"
  homepage "https://apps.kde.org/kleopatra/"
  url "https://download.kde.org/stable/release-service/26.08.2/src/kleopatra-26.08.2.tar.xz"
  sha256 "b3482904c09bac5394b27432c1f91b66860e9fabb33b48302c24086d76726c5d"
  license all_of: ["GPL-2.0-or-later", "LGPL-2.0-or-later"]

  keg_only "it ships private copies of the KDE Frameworks it needs"

  depends_on "bison" => :build
  depends_on "boost" => :build
  depends_on "cmake" => :build
  depends_on "extra-cmake-modules" => :build
  depends_on "ninja" => :build
  depends_on "pkgconf" => :build
  depends_on "gettext"
  depends_on "gnupg"
  depends_on "gpgmepp"
  depends_on "karchive"
  depends_on "ki18n"
  depends_on "libassuan"
  depends_on "libgpg-error"
  depends_on "libical"
  depends_on :macos
  depends_on "pinentry-mac"
  depends_on "qtbase"
  depends_on "qtsvg"
  # Libraries Kleopatra needs that Homebrew does not provide, in build order
  resource "qgpgme" do
    url "https://www.gnupg.org/ftp/gcrypt/qgpgme/qgpgme-2.2.0.tar.xz"
    sha256 "3c6290ff5bfeab981bb48b2951703761f1dbea640cb637beb3560d5fefb0e0b3"
  end

  resource "kdsingleapplication" do
    url "https://github.com/KDAB/KDSingleApplication/releases/download/v1.2.1/kdsingleapplication-1.2.1.tar.gz"
    sha256 "e3254ce9dc5ecf6d61ef83264bc61d486a307f0e3c9ed1bb2176f068cdbcbe09"
  end

  resource "kcoreaddons" do
    url "https://download.kde.org/stable/frameworks/6.31/kcoreaddons-6.31.0.tar.xz"
    sha256 "d3a843249177a6e51714a7211c73829cb071dbebe4f30404423bbbc57ca5ee95"
  end

  resource "kconfig" do
    url "https://download.kde.org/stable/frameworks/6.31/kconfig-6.31.0.tar.xz"
    sha256 "5572e3e098f7cf5d06c78cd941924333c0e84646d2a18aa6b4c9a6f7eae8a5c9"
  end

  resource "kwidgetsaddons" do
    url "https://download.kde.org/stable/frameworks/6.31/kwidgetsaddons-6.31.0.tar.xz"
    sha256 "94d1a1ba334a383c38b7f4238d93895ddd2b40f3d6511b16937bc951b542b5a5"
  end

  resource "kcodecs" do
    url "https://download.kde.org/stable/frameworks/6.31/kcodecs-6.31.0.tar.xz"
    sha256 "2d889f4afd881ae3bc532753c7a2758f45842d4ca828a171d52c8f396128d081"
  end

  resource "kguiaddons" do
    url "https://download.kde.org/stable/frameworks/6.31/kguiaddons-6.31.0.tar.xz"
    sha256 "d440bbe350282b03c828d5987a6db1f0a4f5d87a528907bf19e1e5bb76d4b219"
  end

  resource "kcolorscheme" do
    url "https://download.kde.org/stable/frameworks/6.31/kcolorscheme-6.31.0.tar.xz"
    sha256 "41a8b12a4d9f4fdada70e4853879a2f43a7bf43e870a18c6038eebd956a1f863"
  end

  resource "kcompletion" do
    url "https://download.kde.org/stable/frameworks/6.31/kcompletion-6.31.0.tar.xz"
    sha256 "b9b0023059c09fadfd9aa5d6cf40b3fb0a72d9b45e73b2146c29c20dfab35689"
  end

  resource "kitemviews" do
    url "https://download.kde.org/stable/frameworks/6.31/kitemviews-6.31.0.tar.xz"
    sha256 "cf0d9bf175619ed76cda99a20b04d349082a7c0e4bd1b2ce1dcf2631131cabcd"
  end

  resource "kitemmodels" do
    url "https://download.kde.org/stable/frameworks/6.31/kitemmodels-6.31.0.tar.xz"
    sha256 "bcd5d95bd300c5b8b6400d087bfbf66efec34d3617aef90878e0c90407f6964c"
  end

  resource "kwindowsystem" do
    url "https://download.kde.org/stable/frameworks/6.31/kwindowsystem-6.31.0.tar.xz"
    sha256 "9968f66ba750432480960e321dd7ec32e2ea19a1596496f39147797684842f57"
  end

  resource "kcrash" do
    url "https://download.kde.org/stable/frameworks/6.31/kcrash-6.31.0.tar.xz"
    sha256 "8883c740d5de9aea232060f10c7f3bfdc3f83914b2d91d757ce2c8ed535621a6"
  end

  resource "kdbusaddons" do
    url "https://download.kde.org/stable/frameworks/6.31/kdbusaddons-6.31.0.tar.xz"
    sha256 "7110f9f07b6cef50a238b01b23f2adcb23552ea1e91e2a9c84f96c5d94a69036"
  end

  resource "kconfigwidgets" do
    url "https://download.kde.org/stable/frameworks/6.31/kconfigwidgets-6.31.0.tar.xz"
    sha256 "a9aa37565702ac1353c36cf16cc968c8aa336d33bcab9d0ff5419dd0b1dc92df"
  end

  resource "kservice" do
    url "https://download.kde.org/stable/frameworks/6.31/kservice-6.31.0.tar.xz"
    sha256 "a3e6964ca12aae984f3600fb439c1a906ffe8fecc2111fbfa3fb00052d566e23"
  end

  resource "knotifications" do
    url "https://download.kde.org/stable/frameworks/6.31/knotifications-6.31.0.tar.xz"
    sha256 "34a9a071585bc3e0993ab19c9a9c7dd4813f5a6104b7b0a470e007f258beaf76"
  end

  resource "kjobwidgets" do
    url "https://download.kde.org/stable/frameworks/6.31/kjobwidgets-6.31.0.tar.xz"
    sha256 "b734186ed41e8cc84c2a5f9ba61b46075dacf076450dcb78d37a5d01dcd8c69e"
  end

  resource "kbookmarks" do
    url "https://download.kde.org/stable/frameworks/6.31/kbookmarks-6.31.0.tar.xz"
    sha256 "2d2c53c07fbc813e891bbc95a3ff4828c9e8e348e84a0d94fc2b69adf5897f55"
  end

  resource "breeze-icons" do
    url "https://download.kde.org/stable/frameworks/6.31/breeze-icons-6.31.0.tar.xz"
    sha256 "82ab1c13f782cb37176e7c13c5fb2c77536a65f24b85d09127f3575f917fb56d"
  end

  resource "kiconthemes" do
    url "https://download.kde.org/stable/frameworks/6.31/kiconthemes-6.31.0.tar.xz"
    sha256 "d6558d7dc6ed6de90ef3b5eef905c25fb624147a01d2703329144534a5df58ec"
  end

  resource "solid" do
    url "https://download.kde.org/stable/frameworks/6.31/solid-6.31.0.tar.xz"
    sha256 "82950a3d19a8b3ccac11bbcc297e132b975921e25b386f462abe5727a78f1e35"
  end

  resource "kxmlgui" do
    url "https://download.kde.org/stable/frameworks/6.31/kxmlgui-6.31.0.tar.xz"
    sha256 "048c2229a39ec717740a56b4e8b23dc2e68cefa36c4b6ab652104a0dc1a6fbd8"
  end

  resource "kio" do
    url "https://download.kde.org/stable/frameworks/6.31/kio-6.31.0.tar.xz"
    sha256 "cdc8e3787be1f4a5c8f8a45fabab5cf540ef6380c549c6fd984f15f093b5eac0"
  end

  resource "kmime" do
    url "https://download.kde.org/stable/frameworks/6.31/kmime-6.31.0.tar.xz"
    sha256 "859a5c233ef0a70af76fe678da3b1d519086de9cd410826342bdf2c02eadcf90"
  end

  resource "kcalendarcore" do
    url "https://download.kde.org/stable/frameworks/6.31/kcalendarcore-6.31.0.tar.xz"
    sha256 "dd09650c406ef60ddb3e3fe55dd4faca819a500175197f88f8f2279ebb4fe16e"
  end

  resource "kmbox" do
    url "https://download.kde.org/stable/release-service/26.08.2/src/kmbox-26.08.2.tar.xz"
    sha256 "a4b08915584d0b7ec5fa28adae1eb3d0bc63a1d95f15e40bfae529505d0307a5"
  end

  resource "libkleo" do
    url "https://download.kde.org/stable/release-service/26.08.2/src/libkleo-26.08.2.tar.xz"
    sha256 "70dce52fad62d32a3122542bfb4efa20cd1e0e3de92273bcbaae704f32ed3f32"
  end

  resource "mimetreeparser" do
    url "https://download.kde.org/stable/release-service/26.08.2/src/mimetreeparser-26.08.2.tar.xz"
    sha256 "82b4e37cb59b7264ef13b6e8c18be7d59666f4cbfb51b5ae0f1d7ab6ea35cd09"
  end

  # macOS integration: native look, menus, dialogs and About panel
  patch do
    url "https://raw.githubusercontent.com/giorgiobrullo/homebrew-kleopatra4mac/aa2e6d183126d1a5d6b7ac85c088825893439a24/patches/0001-macos-bundle-info.patch"
    sha256 "5044ed7fb79e6eeec6e0f59961c9c03a607709320a25d597e5a7c03562c47307"
  end

  patch do
    url "https://raw.githubusercontent.com/giorgiobrullo/homebrew-kleopatra4mac/aa2e6d183126d1a5d6b7ac85c088825893439a24/patches/0002-macos-native-look.patch"
    sha256 "93083ac09e18336f35c4329c3bbfe62cf199e855944474b883102442644344c6"
  end

  patch do
    url "https://raw.githubusercontent.com/giorgiobrullo/homebrew-kleopatra4mac/aa2e6d183126d1a5d6b7ac85c088825893439a24/patches/0003-macos-sf-symbols-and-spacing.patch"
    sha256 "9a79ba4451d1032322b2bf4aa09d4ea8bd9b8cf6cd5ac5a764d51086eb7c8b5d"
  end

  patch do
    url "https://raw.githubusercontent.com/giorgiobrullo/homebrew-kleopatra4mac/aa2e6d183126d1a5d6b7ac85c088825893439a24/patches/0004-macos-dialogs.patch"
    sha256 "de96a8fb3c50d3eb9caf8bf5ab73bab39bb9ca33ede3bcec4c7c6c942fe2bee0"
  end

  patch do
    url "https://raw.githubusercontent.com/giorgiobrullo/homebrew-kleopatra4mac/aa2e6d183126d1a5d6b7ac85c088825893439a24/patches/0005-macos-menus-and-about.patch"
    sha256 "fd47f80a3aab479f3bea1acd146dedce1b5e1b78c2f642822b98c5f792e9834d"
  end

  def install
    args = std_cmake_args + %W[
      -DCMAKE_PREFIX_PATH=#{prefix};#{HOMEBREW_PREFIX}
      -DCMAKE_INSTALL_RPATH=#{opt_lib};#{HOMEBREW_PREFIX}/lib
      -DKDE_INSTALL_BUNDLEDIR=#{prefix}/Applications/KDE
      -DBUILD_TESTING=OFF
      -DBUILD_QCH=OFF
      -DBUILD_PYTHON_BINDINGS=OFF
      -DBUILD_DESIGNERPLUGIN=OFF
      -DQT_MAJOR_VERSION=6
    ]
    extra_args = {
      "qgpgme"              => %w[-DBUILD_WITH_QT5=OFF -DBUILD_WITH_QT6=ON],
      "kdsingleapplication" => %w[-DKDSingleApplication_QT6=ON -DKDSingleApplication_EXAMPLES=OFF
                                  -DKDSingleApplication_TESTS=OFF],
      "kguiaddons"          => %w[-DWITH_WAYLAND=OFF -DWITH_X11=OFF],
      "kwindowsystem"       => %w[-DKWINDOWSYSTEM_WAYLAND=OFF -DKWINDOWSYSTEM_X11=OFF],
      "breeze-icons"        => %w[-DWITH_ICON_GENERATION=OFF -DSKIP_INSTALL_ICONS=ON],
      "solid"               => %W[-DBISON_EXECUTABLE=#{formula_opt_bin("bison")}/bison
                                  -DCMAKE_DISABLE_FIND_PACKAGE_IMobileDevice=ON
                                  -DCMAKE_DISABLE_FIND_PACKAGE_PList=ON],
      "kio"                 => %w[-DUSE_DBUS=OFF -DCMAKE_DISABLE_FIND_PACKAGE_KF6DocTools=ON],
      "mimetreeparser"      => %w[-DCMAKE_DISABLE_FIND_PACKAGE_Qt6Quick=ON],
    }

    resources.each do |r|
      r.stage do
        system "cmake", "-S", ".", "-B", "build", "-G", "Ninja", *args, *extra_args.fetch(r.name, [])
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
      end
    end

    system "cmake", "-S", ".", "-B", "build", "-G", "Ninja", *args, "-DCMAKE_DISABLE_FIND_PACKAGE_KF6DocTools=ON"
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  def caveats
    <<~EOS
      To start Kleopatra from Launchpad, Spotlight or the Dock, link it into /Applications:
        ln -sfn #{opt_prefix}/Applications/KDE/kleopatra.app /Applications/Kleopatra.app

      To enter passphrases in a native macOS dialog, select pinentry-mac in GnuPG:
        echo "pinentry-program #{formula_opt_bin("pinentry-mac")}/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
        gpgconf --kill gpg-agent
    EOS
  end

  test do
    app = prefix/"Applications/KDE/kleopatra.app/Contents/MacOS/kleopatra"
    assert_predicate app, :executable?
    ENV["QT_QPA_PLATFORM"] = "offscreen"
    assert_match version.to_s, shell_output("#{app} --version")
  end
end
