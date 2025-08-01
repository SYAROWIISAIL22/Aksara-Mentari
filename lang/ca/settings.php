<?php
/**
 * Settings text strings
 * Contains all text strings used in the general settings sections of BookStack
 * including users and roles.
 */
return [

    // Common Messages
    'settings' => 'Configuració',
    'settings_save' => 'Configuració de desat',
    'system_version' => 'Versió de sistema',
    'categories' => 'Categories',

    // App Settings
    'app_customization' => 'Personalització',
    'app_features_security' => 'Funcions i seguretat',
    'app_name' => 'Nom de l’aplicació',
    'app_name_desc' => 'El nom es mostra a la capçalera i als correus electrònics enviats pel sistema.',
    'app_name_header' => 'Mostra el nom a la capçalera',
    'app_public_access' => 'Accés públic',
    'app_public_access_desc' => 'Si activeu aquesta opció les visitants podran accedir a la vostra instància del BookStack sense iniciar sessió.',
    'app_public_access_desc_guest' => 'L’accés per als visitants públics es pot gestionar amb l’usuari &laquo;Convidat&raquo;.',
    'app_public_access_toggle' => 'Permet l’accés públic',
    'app_public_viewing' => 'Esteu segur que voleu permetre l’accés públic?',
    'app_secure_images' => 'Pujada d’imatges amb més seguretat',
    'app_secure_images_toggle' => 'Habilita la pujada d’imatges amb més seguretat',
    'app_secure_images_desc' => 'Per raons de rendiment, totes les imatges són públiques. Aquesta opció afegeix una cadena aleatòria que és difícil d’endevinar al davant de l’URL de les imatges. Assegureu-vos que els índex de carpetes estan desactivats perquè no s’hi pugui accedir fàcilment.',
    'app_default_editor' => 'Editor de pàgines per defecte',
    'app_default_editor_desc' => 'Seleccioneu quin editor s’utilitzarà per defecte quan s’editin pàgines noves. Això es pot sobreescriure a nivell de pàgina si els permisos ho permeten.',
    'app_custom_html' => 'Contingut personalitzat a la capçalera HTML',
    'app_custom_html_desc' => 'El contingut que s’afegeixi aquí s’inserirà al final de la secció <head> de cada pàgina. Això permet sobreescriure els estils o afegir codi d’analítiques web.',
    'app_custom_html_disabled_notice' => 'El contingut personalitzat a la capçalera HTML està desactivat en aquesta pàgina perquè es puguin revertir els canvis que trenquin el lloc web.',
    'app_logo' => 'Logotip de l’aplicació',
    'app_logo_desc' => 'El logotip s’utilitzarà a la barra de la capçalera de l’aplicació, entre d’altres llocs. La imatge ha de tenir 86px d’alçada. Les imatges més grans es reduiran.',
    'app_icon' => 'Icona de l’aplicació',
    'app_icon_desc' => 'La icona s’utilitzarà a les pestanyes del navegador i a les icones de les adreces. La imatge ha de ser un PNG quadrat de 256px de costat.',
    'app_homepage' => 'Pàgina d’inici de l’aplicació',
    'app_homepage_desc' => 'Seleccioneu una vista per a mostrar a la pàgina d’inici en comptes de la vista per defecte. Els permisos de pàgina s’ignoren a les pàgines seleccionades.',
    'app_homepage_select' => 'Seleccioneu una pàgina',
    'app_footer_links' => 'Enllaços del peu de pàgina',
    'app_footer_links_desc' => 'Afegiu enllaços per a mostrar al peu de pàgina. Els enllaços es mostraran al final de la majoria de les pàgines, incloent-hi les pàgines per a les que no es requereix iniciar sessió. Podeu utilitzar una etiqueta &laquo;trans::<key>&raquo; per a utilitzar traduccions definides pel sistema. Per exemple: Si utilitzeu &laquo;trans::common.privacy_policy&raquo; es mostrarà la traducció de &laquo;Privacy Policy&raquo; i si utilitzeu &laquo;trans::common.terms_of_service&raquo; es mostrarà la traducció de &laquo;Terms of Service&raquo;.',
    'app_footer_links_label' => 'Text de l’enllaç',
    'app_footer_links_url' => 'URL de l’enllaç',
    'app_footer_links_add' => 'Afegeix l’enllaç en el peu de pàgina',
    'app_disable_comments' => 'Desactiva els comentaris',
    'app_disable_comments_toggle' => 'Desactiva els comentaris',
    'app_disable_comments_desc' => 'Desactivarà els comentaris a totes les pàgines de l’aplicació. <br> Els comentaris existents no es mostraran.',

    // Color settings
    'color_scheme' => 'Esquema de colors de l’aplicació',
    'color_scheme_desc' => 'Configureu els colors que s’utilitzaran a la interfície d’usuari de l’aplicació. Podeu configurar els colors pel mode clar o el mode fosc per separat perquè escaigui millor al tema i assegurar la llegibilitat.',
    'ui_colors_desc' => 'Configureu el color principal de l’aplicació i el color per defecte dels enllaços. El color principal s’utilitza al bàner de la capçalera, els botons i les decoracions de la interfície. El color per defecte dels enllaços s’utilitza a les accions i els enllaços de text, tant al contingut escrit com a la interfície de l’aplicació.',
    'app_color' => 'Color principal',
    'link_color' => 'Color per defecte dels enllaços',
    'content_colors_desc' => 'Configureu els colors per a tots els elements en la jerarquia de l’organització de la pàgina. És recomanable que trieu uns colors amb una brillantor similar a la dels colors per defecte per assegurar la llegibilitat.',
    'bookshelf_color' => 'Color dels prestatges',
    'book_color' => 'Color dels llibres',
    'chapter_color' => 'Color dels capítols',
    'page_color' => 'Color de les pàgines',
    'page_draft_color' => 'Color de les pàgines d’esborrany',

    // Registration Settings
    'reg_settings' => 'Registre',
    'reg_enable' => 'Activa el registre d’usuaris',
    'reg_enable_toggle' => 'Activa el registre d’usuaris',
    'reg_enable_desc' => 'Quan el registre està activat, els usuaris es podran registrar com a usuari de l’aplicació. Un cop registrat, se’ls assignarà un rol d’usuari per defecte únic.',
    'reg_default_role' => 'Rol d’usuari per defecte després del registre.',
    'reg_enable_external_warning' => 'S’ignorarà l’opció de sobre quan l’autenticació LDAP or SAML estigui activada. Es crearan automàticament comptes d’usuari per als membres que encara no ho siguin si no és possible l’autenticació amb els sistema d’autenticació extern.',
    'reg_email_confirmation' => 'Correu electrònic de confirmació',
    'reg_email_confirmation_toggle' => 'Requereix un correu electrònic de confirmació',
    'reg_confirm_email_desc' => 'Si s’utilitza la restricció de dominis es requerirà un correu electrònic de confirmació i s’ignorarà aquesta opció.',
    'reg_confirm_restrict_domain' => 'Restricció de dominis',
    'reg_confirm_restrict_domain_desc' => 'Introduïu una llista separada per comes dels dominis a què voleu restringir el registre. S’enviarà un correu electrònic als usuaris perquè confirmin la seva adreça electrònica abans que puguin interactuar amb l’aplicació. <br> Tingueu en compte que els usuaris podran canviar l’adreça electrònica un cop s’hagin registrat.',
    'reg_confirm_restrict_domain_placeholder' => 'No hi ha cap restricció',

    // Sorting Settings
    'sorting' => 'Sorting',
    'sorting_book_default' => 'Default Book Sort',
    'sorting_book_default_desc' => 'Select the default sort rule to apply to new books. This won\'t affect existing books, and can be overridden per-book.',
    'sorting_rules' => 'Sort Rules',
    'sorting_rules_desc' => 'These are predefined sorting operations which can be applied to content in the system.',
    'sort_rule_assigned_to_x_books' => 'Assigned to :count Book|Assigned to :count Books',
    'sort_rule_create' => 'Create Sort Rule',
    'sort_rule_edit' => 'Edit Sort Rule',
    'sort_rule_delete' => 'Delete Sort Rule',
    'sort_rule_delete_desc' => 'Remove this sort rule from the system. Books using this sort will revert to manual sorting.',
    'sort_rule_delete_warn_books' => 'This sort rule is currently used on :count book(s). Are you sure you want to delete this?',
    'sort_rule_delete_warn_default' => 'This sort rule is currently used as the default for books. Are you sure you want to delete this?',
    'sort_rule_details' => 'Sort Rule Details',
    'sort_rule_details_desc' => 'Set a name for this sort rule, which will appear in lists when users are selecting a sort.',
    'sort_rule_operations' => 'Sort Operations',
    'sort_rule_operations_desc' => 'Configure the sort actions to be performed by moving them from the list of available operations. Upon use, the operations will be applied in order, from top to bottom. Any changes made here will be applied to all assigned books upon save.',
    'sort_rule_available_operations' => 'Available Operations',
    'sort_rule_available_operations_empty' => 'No operations remaining',
    'sort_rule_configured_operations' => 'Configured Operations',
    'sort_rule_configured_operations_empty' => 'Drag/add operations from the "Available Operations" list',
    'sort_rule_op_asc' => '(Asc)',
    'sort_rule_op_desc' => '(Desc)',
    'sort_rule_op_name' => 'Name - Alphabetical',
    'sort_rule_op_name_numeric' => 'Name - Numeric',
    'sort_rule_op_created_date' => 'Created Date',
    'sort_rule_op_updated_date' => 'Updated Date',
    'sort_rule_op_chapters_first' => 'Chapters First',
    'sort_rule_op_chapters_last' => 'Chapters Last',

    // Maintenance settings
    'maint' => 'Manteniment',
    'maint_image_cleanup' => 'Neteja d’imatges',
    'maint_image_cleanup_desc' => 'Escanegeu les pàgines i les revisions per a comprovar quines imatges o dibuixos s’utilitzen i quins no. Assegureu-vos de crear una còpia de seguretat completa de la base de dades i de les imatges abans d’executar-la.',
    'maint_delete_images_only_in_revisions' => 'Suprimiu també les imatges que només existeixen en revisions de pàgina antigues.',
    'maint_image_cleanup_run' => 'Executa la neteja',
    'maint_image_cleanup_warning' => 'Imatges que potencialment no s’utilitzen: :count. Esteu segur que voleu suprimir aquestes imatges?',
    'maint_image_cleanup_success' => 'Imatges que potencialment no s’utilitzen que s’han suprimit: :count.',
    'maint_image_cleanup_nothing_found' => 'No s’ha trobat cap imatge que no s’utilitzi. No s’ha suprimit res.',
    'maint_send_test_email' => 'Envia un correu electrònic de prova.',
    'maint_send_test_email_desc' => 'S’enviarà un correu electrònic de prova a l’adreça electrònica que figura al vostre perfil.',
    'maint_send_test_email_run' => 'Envia el correu electrònic de prova',
    'maint_send_test_email_success' => 'S’ha enviat un correu electrònic a :address',
    'maint_send_test_email_mail_subject' => 'Correu electrònic de prova',
    'maint_send_test_email_mail_greeting' => 'Sembla que l’enviament de correus electrònics funciona.',
    'maint_send_test_email_mail_text' => 'Enhorabona! Que hagis rebut aquesta notificació de correu electrònic vol dir que la vostra configuració de correu electrònic és correcta.',
    'maint_recycle_bin_desc' => 'Els prestatges, els llibres, els capítols i les pàgines suprimides s’envien a la paperera perquè es puguin restaurar o suprimir permanentment. És possible que els elements que fa més temps que són a la paperera s’eliminin automàticament al cap d’un temps segons la configuració del sistema.',
    'maint_recycle_bin_open' => 'Obre la paperera',
    'maint_regen_references' => 'Regenera les referències',
    'maint_regen_references_desc' => 'Aquesta acció reconstruirà l’índex de referències creuades entre elements a la base de dades. Normalment es fa automàticament però aquesta acció és útil per a indexar contingut antic o contingut afegit a través de mètodes no oficials.',
    'maint_regen_references_success' => 'S’ha regenerat l’índex de referències.',
    'maint_timeout_command_note' => 'Nota: És possible que aquesta acció trigui a executar-se cosa que pot provocar que s’excedeixi el temps d’espera en alguns entorns web. Com a alternativa, podeu executar aquesta acció amb una ordre del terminal.',

    // Recycle Bin
    'recycle_bin' => 'Paperera',
    'recycle_bin_desc' => 'Aquí podeu restaurar els elements que s’han suprimit o suprimir-los permanentment del sistema. Aquesta llista no està filtrada, a diferència de llistes d’activitat similars on s’apliquen filtres de permisos.',
    'recycle_bin_deleted_item' => 'Element suprimit',
    'recycle_bin_deleted_parent' => 'Pare',
    'recycle_bin_deleted_by' => 'Suprimit per',
    'recycle_bin_deleted_at' => 'Hora de supressió',
    'recycle_bin_permanently_delete' => 'Suprimit permanentment',
    'recycle_bin_restore' => 'Restaura',
    'recycle_bin_contents_empty' => 'La paperera és buida',
    'recycle_bin_empty' => 'Buida la paperera',
    'recycle_bin_empty_confirm' => 'Se suprimiran permanentment tots els elements que hi ha a la paperera incloent-hi el contingut que hi hagi a cada element. Esteu segur que voleu buidar la paperera?',
    'recycle_bin_destroy_confirm' => 'This action will permanently delete this item from the system, along with any child elements listed below, and you will not be able to restore this content. Are you sure you want to permanently delete this item?',
    'recycle_bin_destroy_list' => 'Elements per destruir',
    'recycle_bin_restore_list' => 'Elements per restaurar',
    'recycle_bin_restore_confirm' => 'Aquesta acció restaurarà l’element suprimit, incloent-hi els elements fills, a la seva ubicació original. Si la ubicació original s’ha suprimit i és a la paperera, l’element pare també s’haurà de restaurar.',
    'recycle_bin_restore_deleted_parent' => 'El pare d’aquest element també s’ha suprimit. L’element continuarà suprimit fins que no se’n restauri també el pare.',
    'recycle_bin_restore_parent' => 'Restaura el pare',
    'recycle_bin_destroy_notification' => 'Elements suprimits de la paperera: :count.',
    'recycle_bin_restore_notification' => 'Elements restaurats de la paperera: :count.',

    // Audit Log
    'audit' => 'Registre d’auditoria',
    'audit_desc' => 'El registre d\'auditoria mostra una llista de les activitats de què es fa un seguiment. Aquesta llista no està filtrada, a diferència de llistes d’activitat similars on s’apliquen filtres de permisos.',
    'audit_event_filter' => 'Filtre d’esdeveniments',
    'audit_event_filter_no_filter' => 'Sense filtre',
    'audit_deleted_item' => 'Element suprimit',
    'audit_deleted_item_name' => 'Nom: :name',
    'audit_table_user' => 'Usuari',
    'audit_table_event' => 'Esdeveniment',
    'audit_table_related' => 'Element relacionat o detall',
    'audit_table_ip' => 'Adreça IP',
    'audit_table_date' => 'Data de l’activitat',
    'audit_date_from' => 'Des de',
    'audit_date_to' => 'Fins a',

    // Role Settings
    'roles' => 'Rols',
    'role_user_roles' => 'Rols d’usuari',
    'roles_index_desc' => 'Els rols d’usuari s’utilitzen per a agrupar usuaris i donar-los permisos conjuntament. Un usuari que tingui més d’un rol acumularà els privilegis que s’atorguin a tots els rols i n’heretarà els permisos.',
    'roles_x_users_assigned' => ':count usuari assignat|:count usuaris assignats',
    'roles_x_permissions_provided' => ':count permís|:count permisos',
    'roles_assigned_users' => 'Usuaris assignats',
    'roles_permissions_provided' => 'Permisos atorgats',
    'role_create' => 'Crea un rol',
    'role_delete' => 'Suprimeix un rol',
    'role_delete_confirm' => 'Se suprimirà el rol &laquo;:roleName&raquo;.',
    'role_delete_users_assigned' => 'Usuaris assignats en aquest rol: :userCount. Si voleu migrar aquests usuaris a un altre rol, seleccioneu-ne un dels de sota.',
    'role_delete_no_migration' => "No migris els usuaris",
    'role_delete_sure' => 'Esteu segur que voleu suprimir aquest rol?',
    'role_edit' => 'Edita el rol',
    'role_details' => 'Detalls del rol',
    'role_name' => 'Nom del rol',
    'role_desc' => 'Descripció del rol',
    'role_mfa_enforced' => 'Autenticació multifactorial requerida',
    'role_external_auth_id' => 'Identificadors d’autenticació externa',
    'role_system' => 'Permisos del sistema',
    'role_manage_users' => 'Gestió dels usuaris',
    'role_manage_roles' => 'Gestió dels rols i els seus permisos',
    'role_manage_entity_permissions' => 'Gestió de tots els permisos de llibres, capítols i pàgines',
    'role_manage_own_entity_permissions' => 'Gestió dels permisos als seus llibres, capítols i pàgines',
    'role_manage_page_templates' => 'Gestió de les plantilles de pàgina',
    'role_access_api' => 'Accés a l’API del sistema',
    'role_manage_settings' => 'Gestió de la configuració de l’aplicació',
    'role_export_content' => 'Exportació de contingut',
    'role_import_content' => 'Import content',
    'role_editor_change' => 'Canvi de l’editor de pàgina',
    'role_notifications' => 'Recepció i gestió de notificacions',
    'role_asset' => 'Permisos de recursos',
    'roles_system_warning' => 'Tingueu en compte que l’accés a qualsevol dels tres permisos de dalt permeten que l’usuari canviï els seus privilegis i els privilegis d’altres usuaris. Assigneu rols d’usuari amb aquests permisos només a usuaris de confiança.',
    'role_asset_desc' => 'Aquests permisos controlen l’accés per defecte als recursos del sistema. El permisos dels llibres, capítols i pàgines sobreescriuran aquests permisos.',
    'role_asset_admins' => 'Als administradors se’ls dona accés automàticament a tot el contingut però aquestes opcions mostren o amaguen opcions de la interfície d’usuari.',
    'role_asset_image_view_note' => 'Això té relació amb la visibilitat al gestor d’imatges. L’accés a les imatges pujades dependrà de l’opció d’emmagatzematge d’imatges dels sistema.',
    'role_all' => 'Tot',
    'role_own' => 'Propi',
    'role_controlled_by_asset' => 'Controlat pel recurs a què estan pujats',
    'role_save' => 'Desa el rol',
    'role_users' => 'Usuaris assignats en aquest rol',
    'role_users_none' => 'No hi ha cap usuari assignat en aquest rol',

    // Users
    'users' => 'Usuaris',
    'users_index_desc' => 'Creeu i gestioneu comptes d’usuari individuals. Els comptes d’usuari s’utilitzen per als inicis de sessió i les atribucions de contingut i activitat. Els permisos d’accés es basen fonamentalment en el rol d’usuari però la propietat del contingut, entre d’altres, també afecta els permisos i l’accés.',
    'user_profile' => 'Perfil d’usuari',
    'users_add_new' => 'Afegeix un usuari nou',
    'users_search' => 'Cerca usuaris',
    'users_latest_activity' => 'Activitat més recent',
    'users_details' => 'Detalls de l’usuari',
    'users_details_desc' => 'Configureu un nom i una adreça electrònica per a aquest usuari. L’adreça electrònica s’usarà per a iniciar sessió a l’aplicació.',
    'users_details_desc_no_email' => 'Configureu un nom per a aquest usuari perquè se’l pugui reconèixer.',
    'users_role' => 'Rols d’usuari',
    'users_role_desc' => 'Seleccioneu quins rols s’assignaran en aquest usuari. Si a un usuari se li assignen més d’un rol acumularà els privilegis que s’atorguin a tots els rols i n’heretarà les els permisos.',
    'users_password' => 'Contrasenya d’usuari',
    'users_password_desc' => 'Configureu la contrasenya que s’utilitzarà per a iniciar sessió a l’aplicació. Ha de tenir com a mínim 8 caràcters.',
    'users_send_invite_text' => 'Podeu configurar la contrasenya o enviar un correu electrònic que convidi a l’usuari a configurar-la.',
    'users_send_invite_option' => 'Envia el correu electrònic',
    'users_external_auth_id' => 'Identificador d’autenticació extern',
    'users_external_auth_id_desc' => 'Quan s’utilitza un sistema d’autenticació extern (com ara SAML2, OIDC or LDAP) l’identificador enllaça l’usuari amb el compte dels sistema d’autenticació. Podeu ignorar aquest camp si utilitzeu l’autenticació amb correu electrònic per defecte.',
    'users_password_warning' => 'Ompliu els camps de sota només si voleu canviar la contrasenya d’aquest usuari.',
    'users_system_public' => 'Aquest usuari representa qualsevol usuari convidat que visiti la instància. No es pot utilitzar per a iniciar sessió sinó que s’assigna automàticament.',
    'users_delete' => 'Suprimeix l’usuari',
    'users_delete_named' => 'Suprimeix l’usuari :userName',
    'users_delete_warning' => 'Se suprimirà l’usuari &laquo;:userName&raquo; del sistema.',
    'users_delete_confirm' => 'Esteu segur que voleu suprimir aquest usuari?',
    'users_migrate_ownership' => 'Migració de la propietat',
    'users_migrate_ownership_desc' => 'Si voleu que un altre usuari esdevingui el propietari de tots els elements d’aquest usuari, seleccioneu-ne un.',
    'users_none_selected' => 'No s’ha seleccionat cap usuari',
    'users_edit' => 'Edita l’usuari',
    'users_edit_profile' => 'Edita el perfil',
    'users_avatar' => 'Avatar',
    'users_avatar_desc' => 'Seleccioneu una imatge per a representar aquest usuari. Ha de ser una imatge quadrada de 256px de costat, aproximadament.',
    'users_preferred_language' => 'Llengua',
    'users_preferred_language_desc' => 'Canvia la llengua en què es mostra la interfície d’usuari de l’aplicació. No afectarà el contingut creat pels usuaris.',
    'users_social_accounts' => 'Comptes a les xarxes socials',
    'users_social_accounts_desc' => 'Mireu l’estat dels comptes socials connectats d’aquest usuari. També es poden utilitzar els comptes socials per a iniciar sessió a banda del sistema d’autenticació principal.',
    'users_social_accounts_info' => 'Connecteu els vostres comptes socials per a iniciar sessió més ràpidament. La desconnexió d’un compte no revoca l’autorització d’accés atorgada prèviament. Revoqueu l’accés des de la configuració de perfil del compte social connectat.',
    'users_social_connect' => 'Connecta el compte',
    'users_social_disconnect' => 'Desconnecta el compte',
    'users_social_status_connected' => 'Connectat',
    'users_social_status_disconnected' => 'Desconnectat',
    'users_social_connected' => 'S’ha connectat el compte :socialAccount al vostre perfil.',
    'users_social_disconnected' => 'S’ha desconnectat el compte :socialAccount del vostre perfil.',
    'users_api_tokens' => 'Testimonis API',
    'users_api_tokens_desc' => 'Creeu i gestioneu els testimonis d’accés que s’utilitzen per autenticar els usuaris amb la l’API REST del BookStack. Els permisos de l’API es gestionen a través de l’usuari a qui pertany el testimoni.',
    'users_api_tokens_none' => 'No s’ha creat cap testimoni API per a aquest usuari',
    'users_api_tokens_create' => 'Crea un testimoni',
    'users_api_tokens_expires' => 'Caducitat',
    'users_api_tokens_docs' => 'Documentació de l’API',
    'users_mfa' => 'Autenticació multifactorial',
    'users_mfa_desc' => 'Configureu l’autenticació multifactorial per a afegir una capa de seguretat extra al vostre compte d’usuari.',
    'users_mfa_x_methods' => 'Hi ha :count mètode configurat|Hi ha :count mètodes configurats',
    'users_mfa_configure' => 'Configura un mètode',

    // API Tokens
    'user_api_token_create' => 'Crea un testimoni API',
    'user_api_token_name' => 'Nom',
    'user_api_token_name_desc' => 'Anomeneu el testimoni amb un nom entenedor que permeti saber-ne el propòsit.',
    'user_api_token_expiry' => 'Data de caducitat',
    'user_api_token_expiry_desc' => 'Configureu la data de caducitat del testimoni. Un cop passada aquesta data, les sol·licituds fetes amb aquest testimoni no funcionaran. Si deixeu aquest camp en blanc, el testimoni caducarà d’aquí 100 anys.',
    'user_api_token_create_secret_message' => 'Es crearà i es mostrarà un &laquo;identificador de testimoni&raquo; i un &laquo;secret de testimoni&raquo; immediatament després de crear aquest testimoni. El secret es mostrarà només un sol cop. Assegureu-vos d’anotar-lo i de desar-lo en un lloc segur abans de continuar.',
    'user_api_token' => 'Testimoni API',
    'user_api_token_id' => 'Identificador de testimoni',
    'user_api_token_id_desc' => 'És un identificador no editable generat pel sistema per a aquest testimoni i que s’haurà de proporcionar en les sol·licituds API.',
    'user_api_token_secret' => 'Secret de testimoni',
    'user_api_token_secret_desc' => 'És un secret generat pel sistema per a aquest testimoni i que s’haurà de proporcionar en les sol·licituds API. Es mostrarà només un sol cop. Assegureu-vos d’anotar-lo i de desar-lo en un lloc segur abans de continuar.',
    'user_api_token_created' => 'Testimoni creat :timeAgo',
    'user_api_token_updated' => 'Testimoni actualitzat :timeAgo',
    'user_api_token_delete' => 'Suprimeix el testimoni',
    'user_api_token_delete_warning' => 'Se suprimirà el testimoni API &laquo;:tokenName&raquo; del sistema.',
    'user_api_token_delete_confirm' => 'Esteu segur que voleu suprimir aquest testimoni API?',

    // Webhooks
    'webhooks' => 'Webhooks',
    'webhooks_index_desc' => 'Els webhooks permeten enviar dades a URLs externs quan ocorren unes accions o esdeveniments determinats. Això permet la integració basada en esdeveniments amb plataformes externes com ara sistemes de missatgeria o notificació.',
    'webhooks_x_trigger_events' => 'Hi ha :count esdeveniment disparador|Hi ha :count esdeveniments disparadors',
    'webhooks_create' => 'Crea un webhook',
    'webhooks_none_created' => 'No hi ha cap webhook',
    'webhooks_edit' => 'Edita el webhook',
    'webhooks_save' => 'Desa el webhook',
    'webhooks_details' => 'Detalls del webhook',
    'webhooks_details_desc' => 'Anomeneu el webhook amb un nom entenedor i proporcioneu un extrem POST com a ubicació on enviar les dades per al webhook.',
    'webhooks_events' => 'Esdeveniments webhook',
    'webhooks_events_desc' => 'Seleccioneu els esdeveniment que voleu que disparin la crida d’aquest webhook.',
    'webhooks_events_warning' => 'Tingueu en compte que aquestes crides es dispararan a tots els esdeveniments seleccionats, inclús si s’apliquen permisos personalitzats. Assegureu-vos que l’ús d’aquest webhook no exposarà contingut confidencial.',
    'webhooks_events_all' => 'Tots els esdeveniments del sistema',
    'webhooks_name' => 'Nom del webhook',
    'webhooks_timeout' => 'Temps d’espera del webhook (en segons)',
    'webhooks_endpoint' => 'Extrem del webhook',
    'webhooks_active' => 'Webhook actiu',
    'webhook_events_table_header' => 'Esdeveniments',
    'webhooks_delete' => 'Suprimeix el webhook',
    'webhooks_delete_warning' => 'Se suprimirà el webhook &laquo;:webhookName&raquo; del sistema.',
    'webhooks_delete_confirm' => 'Esteu segur que voleu suprimir aquest webhook?',
    'webhooks_format_example' => 'Exemple de format de webhook',
    'webhooks_format_example_desc' => 'Les dades d’un webhook s’envien com una sol·licitud POST a l’extrem configurat com a JSON amb el format següent. Les propietats &laquo;related_item&raquo; i &laquo;url&raquo; són opcionals i dependran del tipus d’esdeveniment que es dispari.',
    'webhooks_status' => 'Estat del webhook',
    'webhooks_last_called' => 'Darrera crida:',
    'webhooks_last_errored' => 'Darrer error:',
    'webhooks_last_error_message' => 'Darrer missatge d’error:',

    // Licensing
    'licenses' => 'Licenses',
    'licenses_desc' => 'This page details license information for BookStack in addition to the projects & libraries that are used within BookStack. Many projects listed may only be used in a development context.',
    'licenses_bookstack' => 'BookStack License',
    'licenses_php' => 'PHP Library Licenses',
    'licenses_js' => 'JavaScript Library Licenses',
    'licenses_other' => 'Other Licenses',
    'license_details' => 'License Details',

    //! If editing translations files directly please ignore this in all
    //! languages apart from en. Content will be auto-copied from en.
    //!////////////////////////////////
    'language_select' => [
        'en' => 'English',
        'ar' => 'العربية',
        'bg' => 'Bǎlgarski',
        'bs' => 'Bosanski',
        'ca' => 'Català',
        'cs' => 'Česky',
        'cy' => 'Cymraeg',
        'da' => 'Dansk',
        'de' => 'Deutsch (Sie)',
        'de_informal' => 'Deutsch (Du)',
        'el' => 'ελληνικά',
        'es' => 'Español',
        'es_AR' => 'Español Argentina',
        'et' => 'Eesti keel',
        'eu' => 'Euskara',
        'fa' => 'فارسی',
        'fi' => 'Suomi',
        'fr' => 'Français',
        'he' => 'עברית',
        'hr' => 'Hrvatski',
        'hu' => 'Magyar',
        'id' => 'Bahasa Indonesia',
        'it' => 'Italian',
        'ja' => '日本語',
        'ko' => '한국어',
        'lt' => 'Lietuvių Kalba',
        'lv' => 'Latviešu Valoda',
        'nb' => 'Norsk (Bokmål)',
        'ne' => 'नेपाली',
        'nn' => 'Nynorsk',
        'nl' => 'Nederlands',
        'pl' => 'Polski',
        'pt' => 'Português',
        'pt_BR' => 'Português do Brasil',
        'ro' => 'Română',
        'ru' => 'Русский',
        'sk' => 'Slovensky',
        'sl' => 'Slovenščina',
        'sv' => 'Svenska',
        'tr' => 'Türkçe',
        'uk' => 'Українська',
        'uz' => 'O‘zbekcha',
        'vi' => 'Tiếng Việt',
        'zh_CN' => '简体中文',
        'zh_TW' => '繁體中文',
    ],
    //!////////////////////////////////
];
