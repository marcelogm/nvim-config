local config = {
  cmd = {
    'java',	
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-jar', '/usr/share/java/jdtls/features/org.eclipse.equinox.executable_3.8.2200.v20230622-2056.jar',
    '-configuration', '/usr/share/java/jdtls/config_linux',
    '-data', '/usr/share/java/jdtls'
  },
  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),
  settings = {
    java = {
    }
  },
  init_options = {
    bundles = {}
  },
}
require('jdtls').start_or_attach(config)
