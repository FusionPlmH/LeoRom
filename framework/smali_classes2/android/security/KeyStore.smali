.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field public static final ALIASES_LIST_KNOX:I = 0x1

.field public static final ALIASES_LIST_OWN:I = 0x0

.field public static final CANNOT_ATTEST_IDS:I = -0x42

.field private static final CERTIFICATE_STRING:Ljava/lang/String; = "certificate"

.field private static final CLEAR:I = 0x1

.field public static final CONFIRMATIONUI_ABORTED:I = 0x2

.field public static final CONFIRMATIONUI_CANCELED:I = 0x1

.field public static final CONFIRMATIONUI_IGNORED:I = 0x4

.field public static final CONFIRMATIONUI_OK:I = 0x0

.field public static final CONFIRMATIONUI_OPERATION_PENDING:I = 0x3

.field public static final CONFIRMATIONUI_SYSTEM_ERROR:I = 0x5

.field public static final CONFIRMATIONUI_UIERROR:I = 0x10000

.field public static final CONFIRMATIONUI_UIERROR_MALFORMED_UTF8_ENCODING:I = 0x10003

.field public static final CONFIRMATIONUI_UIERROR_MESSAGE_TOO_LONG:I = 0x10002

.field public static final CONFIRMATIONUI_UIERROR_MISSING_GLYPH:I = 0x10001

.field public static final CONFIRMATIONUI_UNEXPECTED:I = 0x7

.field public static final CONFIRMATIONUI_UNIMPLEMENTED:I = 0x6

.field private static final DELETE:I = 0x2

.field public static final FLAG_CRITICAL_TO_DEVICE_ENCRYPTION:I = 0x8

.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SOFTWARE:I = 0x2

.field public static final FLAG_STRONGBOX:I = 0x10

.field private static final GENERATE:I = 0x4

.field public static final HARDWARE_TYPE_UNAVAILABLE:I = -0x44

.field private static final IMPORT:I = 0x5

.field private static final INSERT:I = 0x3

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final OPTION_ENCRYPTED_CREDENTIALS:I = 0x1

.field public static final OPTION_SYSTEM_CREDENTIAL_UIDS:I = 0x2

.field public static final OP_AUTH_NEEDED:I = 0xf

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final REMOTE_EXCEPTION:I = 0xc8

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private lMdmService:Landroid/sec/enterprise/IEDMProxy;

.field private final mBinder:Landroid/security/IKeystoreService;

.field private final mContext:Landroid/content/Context;

.field private mError:I

.field private final mIsMdfEnforced:Z

.field private mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStore;->mError:I

    iput-object p1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/KeyStore;->mIsMdfEnforced:Z

    return-void
.end method

.method private auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-direct {v0, v2}, Landroid/security/KeyStore;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/4 v13, 0x4

    const/16 v12, 0xc8

    const/16 v17, 0x5

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    const-string v7, " (Keystore=%s, key=%s, uid=%s, requested by %s)"

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v14, v8, v4

    aput-object v1, v8, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v16

    invoke-direct/range {p0 .. p0}, Landroid/security/KeyStore;->getRequestorInfo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v15

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_1

    move/from16 v7, v17

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Key importing activity"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_2

    const-string v13, " succeeded"

    goto :goto_2

    :cond_2
    const-string v13, " failed"

    :goto_2
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_3

    const-string v12, ""

    goto :goto_3

    :cond_3
    if-ne v3, v12, :cond_4

    const-string v12, " cannot connect to keystore"

    goto :goto_3

    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " with error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v2, v5}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v13

    move v9, v6

    invoke-static/range {v7 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_13

    :pswitch_1
    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key generation failed"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v12, :cond_5

    const-string v7, " cannot connect to KeyStore"

    goto :goto_4

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " with error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct {v0, v2, v5}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v24

    invoke-static/range {v18 .. v24}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_13

    :pswitch_2
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-direct/range {p0 .. p1}, Landroid/security/KeyStore;->isPrivateKeyPrefix(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_6

    move/from16 v7, v17

    goto :goto_6

    :cond_6
    move v7, v5

    :goto_6
    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Installing "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Landroid/security/KeyStore;->getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_7

    const-string v12, " succeeded"

    goto :goto_7

    :cond_7
    const-string v12, " failed"

    :goto_7
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " Keystore : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", Alias : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", Subject : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v15, :cond_8

    const-string v12, "Not available"

    goto :goto_8

    :cond_8
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    :goto_8
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", Issuer : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v15, :cond_9

    const-string v12, "Not available"

    goto :goto_9

    :cond_9
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v12

    :goto_9
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v2, v5}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v13

    move v9, v6

    invoke-static/range {v7 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :pswitch_3
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-direct/range {p0 .. p1}, Landroid/security/KeyStore;->isPrivateKeyPrefix(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_a

    move/from16 v7, v17

    goto :goto_b

    :cond_a
    move v7, v5

    :goto_b
    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleting "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Landroid/security/KeyStore;->getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_b

    const-string v12, " succeeded"

    goto :goto_c

    :cond_b
    const-string v12, " failed"

    :goto_c
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " Keystore : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", Alias : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", Subject : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_c

    const-string v12, "Not available"

    goto :goto_d

    :cond_c
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    :goto_d
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", Issuer : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_d

    const-string v12, "Not available"

    goto :goto_e

    :cond_d
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v12

    :goto_e
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v2, v5}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v20

    move v9, v6

    move-object/from16 v21, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v19

    move v15, v13

    move/from16 v13, v20

    invoke-static/range {v7 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    nop

    move v13, v15

    move-object/from16 v11, v18

    const/16 v12, 0xc8

    const/4 v15, 0x3

    goto/16 :goto_a

    :cond_e
    move v15, v13

    iget-boolean v7, v0, Landroid/security/KeyStore;->mIsMdfEnforced:Z

    if-eqz v7, :cond_14

    const-string v7, " (Keystore=%s, key=%s, uid=%s, requested by %s)"

    new-array v8, v15, [Ljava/lang/Object;

    aput-object v14, v8, v4

    aput-object v1, v8, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v16

    invoke-direct/range {p0 .. p0}, Landroid/security/KeyStore;->getRequestorInfo()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_f

    move/from16 v7, v17

    goto :goto_f

    :cond_f
    move v7, v5

    :goto_f
    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Key destruction activity"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_10

    const-string v12, " succeeded"

    goto :goto_10

    :cond_10
    const-string v12, " failed"

    :goto_10
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_11

    const-string v12, ""

    goto :goto_11

    :cond_11
    const/16 v12, 0xc8

    if-ne v3, v12, :cond_12

    const-string v12, " cannot connect to keystore"

    goto :goto_11

    :cond_12
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " with error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_11
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v2, v5}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v13

    move v9, v6

    invoke-static/range {v7 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_13

    :pswitch_4
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Clearing credentials "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_13

    const-string v9, " succeeded"

    goto :goto_12

    :cond_13
    const-string v9, " failed"

    :goto_12
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Keystore : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v2, v5}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v13

    move v9, v6

    invoke-static/range {v7 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    nop

    :cond_14
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertFromPem([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Failed converting certificate from pem"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Failed converting certificate from pem"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Failed converting certificate from pem"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    nop

    :goto_1
    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 3

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to obtain application Context from ActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getFingerprintOnlySid()J
    .locals 5

    iget-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v1, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .locals 2

    const-string v0, "android.security.keystore"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    new-instance v1, Landroid/security/KeyStore;

    invoke-direct {v1, v0}, Landroid/security/KeyStore;-><init>(Landroid/security/IKeystoreService;)V

    return-object v1
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .locals 2

    if-lez p0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_5
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_6
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "OK"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Operation requires authorization"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    const/16 v0, -0x10

    if-eq p0, v0, :cond_2

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getKeyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "certificate"

    if-eqz p1, :cond_1

    const-string v1, "USRPKEY_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "private key"

    goto :goto_0

    :cond_0
    const-string v1, "USRSKEY_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "secret key"

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getKeystoreString(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/16 v1, 0x3f2

    if-ne p1, v1, :cond_0

    const-string v0, "Wi-Fi"

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v0, "VPN and Apps"

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getRequestorInfo()Ljava/lang/String;
    .locals 12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    const-string v2, "SystemApp"

    goto :goto_0

    :cond_0
    const-string v2, "UserApp"

    :goto_0
    const-string v3, ""

    :try_start_0
    iget-object v4, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    const-string v4, "android.os.ServiceManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getService"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const-string v7, "enterprise_policy"

    aput-object v7, v5, v9

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const-string v5, "com.samsung.android.knox.IEnterpriseDeviceManager$Stub"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "asInterface"

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Landroid/os/IBinder;

    aput-object v11, v10, v9

    invoke-virtual {v5, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "packageHasActiveAdmins"

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v9

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v9

    invoke-virtual {v7, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "|Administrator"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    goto :goto_1

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "|NonAdministrator"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v8

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v4

    const-string v5, "KeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Administrator status cannot be defined for requestor: uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " role="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private declared-synchronized getToken()Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    :cond_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUserId(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v0

    return v0
.end method

.method private getUserId(IZ)I
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/16 v1, 0x3f2

    if-ne p1, v1, :cond_1

    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private isCertificateTrustedByMdm([BI)Z
    .locals 5

    iget-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    move-result-object v0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v1

    invoke-virtual {v0}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->isCertificateTrustedUntrustedEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, v3, p2}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser([BZI)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->isCertificateValidationAtInstallEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/sec/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstallAsUser([BI)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private isPrivateKeyPrefix(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Landroid/security/KeyStore;->getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "certificate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private refreshRollbackUserKeystore(I)V
    .locals 3

    iget-object v0, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->notifyUserKeystoreUnlocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Failed talking with Certificate Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public abort(Landroid/os/IBinder;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->abort(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public addAccessorToPrivilegedList(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->addAccessorToPrivilegedList(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public addAuthToken([B)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->addAuthToken([B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public addRngEntropy([BI)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->addRngEntropy([BI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    new-instance v0, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object p2, v0

    :cond_1
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/IKeystoreService;->attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    nop

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .locals 3

    if-nez p2, :cond_0

    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p3, :cond_1

    new-instance v0, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object p3, v0

    :cond_1
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/IKeystoreService;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    nop

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 8

    if-eqz p5, :cond_0

    move-object v6, p5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v6, v0

    :goto_0
    if-eqz p4, :cond_1

    move-object v5, p4

    goto :goto_1

    :cond_1
    new-instance p5, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v5, p5

    :goto_1
    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object p4

    return-object p4
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;
    .locals 9

    if-eqz p4, :cond_0

    move-object v6, p4

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v0

    :goto_0
    if-eqz p5, :cond_1

    move-object v7, p5

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :try_start_1
    new-array p4, p4, [B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, p4

    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-direct {p0}, Landroid/security/KeyStore;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/security/IKeystoreService;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object p4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p4

    :catch_0
    move-exception p4

    goto :goto_2

    :catch_1
    move-exception p4

    move-object v7, p5

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, p4

    move-object v7, p5

    move-object p4, v0

    :goto_2
    const-string p5, "KeyStore"

    const-string v0, "Cannot connect to keystore"

    invoke-static {p5, v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p5, 0x0

    return-object p5
.end method

.method public cancelConfirmationPrompt(Landroid/os/IBinder;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->cancelConfirmationPrompt(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    return v1
.end method

.method public clearUid(I)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Landroid/security/IKeystoreService;->clear_uid(J)I

    move-result v1

    const-string v3, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    move v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v5, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0xc8

    move-object v4, p0

    move v6, p1

    invoke-direct/range {v4 .. v9}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->exist(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public containsAlias(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/security/KeyStore;->list(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public containsUniqueAlias(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->list(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    array-length v2, v0

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .locals 10

    invoke-direct {p0, p2}, Landroid/security/KeyStore;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    const-string v2, "USRCERT_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CACERT_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Landroid/security/KeyStore;->convertFromPem([B)Ljava/util/List;

    move-result-object v1

    :cond_1
    const/4 v8, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1, p2}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I

    move-result v2

    move v9, v2

    if-eqz v0, :cond_2

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, v1

    move v7, v9

    invoke-direct/range {v2 .. v7}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V

    :cond_2
    const/4 v2, 0x1

    if-ne v9, v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    nop

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2}, Landroid/security/KeyStore;->getUserId(I)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    if-eq v9, v2, :cond_5

    const/4 v3, 0x7

    if-ne v9, v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v8

    nop

    :cond_5
    :goto_1
    return v2

    :catch_0
    move-exception v2

    move-object v9, v2

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_6

    const/4 v5, 0x2

    const/16 v7, 0xc8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V

    :cond_6
    return v8
.end method

.method delete2(Ljava/lang/String;I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object v0

    return-object v0
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;
    .locals 9

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v6, p3

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/security/keymaster/KeymasterBlob;

    new-array v2, v0, [B

    invoke-direct {v1, v2}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v1

    :goto_0
    if-eqz p4, :cond_1

    move-object v7, p4

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p3, Landroid/security/keymaster/KeymasterBlob;

    new-array v0, v0, [B

    invoke-direct {p3, v0}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, p3

    :goto_1
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v4, p1

    move v5, p2

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/security/IKeystoreService;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object p3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p3

    :catch_0
    move-exception p3

    move-object p4, v7

    goto :goto_2

    :catch_1
    move-exception p3

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    :goto_2
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/security/KeyStore;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    .locals 3

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :goto_0
    move-object p2, v0

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    move-object v1, p4

    goto :goto_1

    :cond_1
    new-array v1, v0, [B

    :goto_1
    move-object p4, v1

    if-eqz p3, :cond_2

    move-object v0, p3

    goto :goto_2

    :cond_2
    new-array v0, v0, [B

    :goto_2
    move-object p3, v0

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public generate(Ljava/lang/String;IIII[[B)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    new-instance v7, Landroid/security/KeystoreArguments;

    invoke-direct {v7, p6}, Landroid/security/KeystoreArguments;-><init>([[B)V

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/security/IKeystoreService;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    move-result v1

    iget-boolean v2, p0, Landroid/security/KeyStore;->mIsMdfEnforced:Z

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    if-eq v1, v8, :cond_0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-ne v1, v8, :cond_1

    goto :goto_0

    :cond_1
    move v8, v0

    :goto_0
    return v8

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v2, p0, Landroid/security/KeyStore;->mIsMdfEnforced:Z

    if-eqz v2, :cond_2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v8, 0xc8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V

    :cond_2
    return v0
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 15

    move-object v7, p0

    if-eqz p3, :cond_0

    move-object/from16 v11, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v11, v0

    :goto_0
    if-eqz p2, :cond_1

    move-object/from16 v10, p2

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v0

    :goto_1
    :try_start_2
    iget-object v8, v7, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object/from16 v9, p1

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    invoke-interface/range {v8 .. v14}, Landroid/security/IKeystoreService;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    iget-boolean v1, v7, Landroid/security/KeyStore;->mIsMdfEnforced:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, p4

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v10, p2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    :goto_2
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v1, v7, Landroid/security/KeyStore;->mIsMdfEnforced:Z

    if-eqz v1, :cond_3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v6, 0xc8

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, p4

    invoke-direct/range {v1 .. v6}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V

    :cond_3
    const/4 v1, 0x4

    return v1
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 7

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;I)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, ""

    :goto_0
    move-object p1, v1

    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->get(Ljava/lang/String;I)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get() : not found key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;II)Ljava/security/InvalidKeyException;
    .locals 1

    invoke-static {p3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;
    .locals 12

    invoke-virtual {p3}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Keystore operation failed"

    invoke-direct {v0, v1, p3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Landroid/security/keystore/KeyNotYetValidException;

    invoke-direct {v0}, Landroid/security/keystore/KeyNotYetValidException;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, Landroid/security/keystore/KeyExpiredException;

    invoke-direct {v0}, Landroid/security/keystore/KeyExpiredException;-><init>()V

    return-object v0

    :cond_0
    :pswitch_4
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Failed to obtained key characteristics"

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1
    const v2, -0x5ffffe0a

    invoke-virtual {v0, v2}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v3}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v3

    :cond_2
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    invoke-static {v3, v4}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v5

    :cond_3
    iget-object v7, v0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const/4 v8, 0x0

    const v9, 0x100001f8

    invoke-virtual {v7, v9, v8}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v7

    if-nez v7, :cond_4

    iget-object v10, v0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v10, v9, v8}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v7

    const-string v8, "KeyStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "keyAuthType : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    and-int/lit8 v8, v7, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    invoke-direct {p0}, Landroid/security/KeyStore;->getFingerprintOnlySid()J

    move-result-wide v8

    cmp-long v5, v8, v5

    if-eqz v5, :cond_5

    invoke-static {v8, v9}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "KeyStore"

    const-string v6, "UserNotAuthenticatedException because of Fingerprint"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v5

    :cond_5
    const-string v5, "KeyStore"

    const-string v6, "KeyPermanentlyInvalidatedException for Fingerprint"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v5}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v5

    :cond_6
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v8

    and-int/lit8 v9, v7, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_9

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->getAuthenticatorId()J

    move-result-wide v9

    goto :goto_0

    :cond_7
    move-wide v9, v5

    :goto_0
    cmp-long v5, v9, v5

    if-eqz v5, :cond_8

    invoke-static {v9, v10}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "KeyStore"

    const-string v6, "UserNotAuthenticatedException because of Iris"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v5

    :cond_8
    const-string v5, "KeyStore"

    const-string v6, "KeyPermanentlyInvalidatedException for Iris"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v5}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v5

    :cond_9
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/biometrics/SemBiometricsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object v9

    and-int/lit8 v10, v7, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_c

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/samsung/android/biometrics/SemBiometricsManager;->getAuthenticatorId()J

    move-result-wide v10

    goto :goto_1

    :cond_a
    move-wide v10, v5

    :goto_1
    cmp-long v5, v10, v5

    if-eqz v5, :cond_b

    invoke-static {v10, v11}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "KeyStore"

    const-string v6, "UserNotAuthenticatedException because of intelligent scan"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v5

    :cond_b
    const-string v5, "KeyStore"

    const-string v6, "KeyPermanentlyInvalidatedException for intelligent scan"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v5}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v5

    :cond_c
    const-string v5, "KeyStore"

    const-string v6, "None of the key\'s SIDs can ever be authenticated"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v5}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch -0x1a
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v5, p2

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/security/keymaster/KeymasterBlob;

    new-array v2, v0, [B

    invoke-direct {v1, v2}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v1

    :goto_0
    if-eqz p3, :cond_1

    move-object v6, p3

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p2, Landroid/security/keymaster/KeymasterBlob;

    new-array v0, v0, [B

    invoke-direct {p2, v0}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, p2

    :goto_1
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v4, p1

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/security/IKeystoreService;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p2

    :catch_0
    move-exception p2

    move-object p3, v6

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, p2

    move-object p2, v0

    :goto_2
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    .locals 6

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public getmtime(Ljava/lang/String;)J
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getmtime(Ljava/lang/String;I)J
    .locals 5

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1, p2}, Landroid/security/IKeystoreService;->getmtime(Ljava/lang/String;I)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :catch_0
    move-exception v2

    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public grant(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->grant(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/security/IKeystoreService;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    iget-boolean v1, p0, Landroid/security/KeyStore;->mIsMdfEnforced:Z

    if-eqz v1, :cond_0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v1, p0, Landroid/security/KeyStore;->mIsMdfEnforced:Z

    if-eqz v1, :cond_1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0xc8

    move-object v2, p0

    move-object v3, p1

    move v4, p5

    invoke-direct/range {v2 .. v7}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V

    :cond_1
    const/4 v1, 0x4

    return v1
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->import_key(Ljava/lang/String;[BII)I

    move-result v1

    iget-boolean v2, p0, Landroid/security/KeyStore;->mIsMdfEnforced:Z

    if-eqz v2, :cond_0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v2, p0, Landroid/security/KeyStore;->mIsMdfEnforced:Z

    if-eqz v2, :cond_2

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/16 v8, 0xc8

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v3 .. v8}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V

    :cond_2
    return v0
.end method

.method public importWrappedKey(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 13

    move-object v1, p0

    :try_start_0
    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p11

    invoke-interface/range {v2 .. v12}, Landroid/security/IKeystoreService;->importWrappedKey(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJLandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x4

    return v2
.end method

.method public insert(Ljava/lang/String;[BII)I
    .locals 9

    invoke-direct {p0, p3}, Landroid/security/KeyStore;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v1

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [B

    move-object p2, v2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p2, v0}, Landroid/security/KeyStore;->isCertificateTrustedByMdm([BI)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    const/4 v6, 0x3

    invoke-direct {p0, p2}, Landroid/security/KeyStore;->convertFromPem([B)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x6

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v3 .. v8}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V

    :cond_1
    const-string v2, "KeyStore"

    const-string v3, "Put not allowed. Untrusted certificate."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x6

    return v2

    :cond_2
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->insert(Ljava/lang/String;[BII)I

    move-result v2

    if-eqz v1, :cond_3

    const/4 v6, 0x3

    invoke-direct {p0, p2}, Landroid/security/KeyStore;->convertFromPem([B)Ljava/util/List;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v2

    :goto_1
    nop

    if-eqz v1, :cond_4

    const/4 v6, 0x3

    invoke-direct {p0, p2}, Landroid/security/KeyStore;->convertFromPem([B)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0xc8

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v3 .. v8}, Landroid/security/KeyStore;->auditLogPrivilegedAsUser(Ljava/lang/String;IILjava/util/List;I)V

    :cond_4
    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x4

    return v3
.end method

.method public isConfirmationPromptSupported()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0}, Landroid/security/IKeystoreService;->isConfirmationPromptSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isEmpty(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->isEmpty(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isEmpty(II)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->isEmptyOption(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isHardwareBacked()Z
    .locals 1

    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/security/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isOperationAuthorized(Landroid/os/IBinder;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->isOperationAuthorized(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isStrongBoxAvailable()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0}, Landroid/security/IKeystoreService;->isStrongBoxAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isUnlocked()Z
    .locals 2

    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public list()[Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(I)[Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string v0, "KeyStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "list_knox : unknown mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "*"

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Landroid/security/KeyStore;->list(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "KeyStore exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/IKeystoreService;->listFromDb(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public listAccessorsFromDb(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/IKeystoreService;->listAccessorsFromDb(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public listPrivilegedAccessors()[Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0}, Landroid/security/IKeystoreService;->listPrivilegedAccessors()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public lock()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->lock(I)Z

    move-result v0

    return v0
.end method

.method public lock(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->lock(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public modifyCcmAccessors(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/IKeystoreService;->modifyCcmAccessors(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public onDeviceOffBody()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0}, Landroid/security/IKeystoreService;->onDeviceOffBody()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onUserAdded(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->onUserAdded(II)V

    return-void
.end method

.method public onUserAdded(II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/IKeystoreService;->onUserAdded(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)Z
    .locals 4

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->onUserPasswordChanged(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onUserPasswordChanged(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onUserRemoved(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->onUserRemoved(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    return v1
.end method

.method public put(Ljava/lang/String;[BII)Z
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public removeAccessorFromPrivilegedList(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->removeAccessorFromPrivilegedList(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public reset()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1}, Landroid/security/IKeystoreService;->reset()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public retrieveUniqueAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->list(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->sign(Ljava/lang/String;[B)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "KeyStore exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public state()Landroid/security/KeyStore$State;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    return-object v0
.end method

.method public state(I)Landroid/security/KeyStore$State;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->getState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    iget v2, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :pswitch_0
    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    return-object v1

    :pswitch_1
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    return-object v1

    :pswitch_2
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->ungrant(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public unlock(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, ""

    :goto_0
    move-object p2, v1

    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->unlock(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/security/KeyStore;->mError:I

    iget v1, p0, Landroid/security/KeyStore;->mError:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/security/KeyStore;->refreshRollbackUserKeystore(I)V

    :cond_1
    iget v1, p0, Landroid/security/KeyStore;->mError:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_2

    move v0, v2

    nop

    :cond_2
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unlock_sec(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, ""

    :goto_0
    move-object p2, v1

    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->unlock_sec(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/security/KeyStore;->mError:I

    iget v1, p0, Landroid/security/KeyStore;->mError:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/security/KeyStore;->refreshRollbackUserKeystore(I)V

    :cond_1
    iget v1, p0, Landroid/security/KeyStore;->mError:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_2

    move v0, v2

    nop

    :cond_2
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public unlock_sec(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->unlock_sec(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 3

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :goto_0
    move-object p2, v0

    if-eqz p3, :cond_1

    move-object v0, p3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_1
    move-object p3, v0

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/IKeystoreService;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    :try_start_0
    new-array v1, v0, [B

    :goto_0
    move-object p3, v1

    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3}, Landroid/security/IKeystoreService;->verify(Ljava/lang/String;[B[B)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "KeyStore exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_1
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
