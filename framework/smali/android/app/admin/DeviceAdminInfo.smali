.class public final Landroid/app/admin/DeviceAdminInfo;
.super Ljava/lang/Object;
.source "DeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "DeviceAdminInfo"

.field public static final USES_ENCRYPTED_STORAGE:I = 0x7

.field public static final USES_POLICY_ALLOW_BLUETOOTH_MODE:I = 0x11

.field public static final USES_POLICY_ALLOW_BROWSER:I = 0xf

.field public static final USES_POLICY_ALLOW_DESKTOP_SYNC:I = 0x12

.field public static final USES_POLICY_ALLOW_INTERNET_SHARING:I = 0x10

.field public static final USES_POLICY_ALLOW_IRDA:I = 0x13

.field public static final USES_POLICY_ALLOW_POPIMAP_EMAIL:I = 0xe

.field public static final USES_POLICY_ALLOW_STORAGE_CARD:I = 0xb

.field public static final USES_POLICY_ALLOW_TEXT_MESSAGING:I = 0xd

.field public static final USES_POLICY_ALLOW_THIRD_PARTY_APP:I = 0x16

.field public static final USES_POLICY_ALLOW_UNSIGNED_APP:I = 0x19

.field public static final USES_POLICY_ALLOW_UNSIGNED_INSTALLATION_PACKAGE:I = 0x1a

.field public static final USES_POLICY_ALLOW_WIFI:I = 0xc

.field public static final USES_POLICY_BLOCK_INROM_APP:I = 0x17

.field public static final USES_POLICY_DEVICE_OWNER:I = -0x2

.field public static final USES_POLICY_DISABLE_CAMERA:I = 0x8

.field public static final USES_POLICY_DISABLE_KEYGUARD_FEATURES:I = 0x9

.field public static final USES_POLICY_EAS_FLAGS:I = 0x18

.field public static final USES_POLICY_EDM_BEGIN:I = 0x1b

.field public static final USES_POLICY_EXPIRE_PASSWORD:I = 0x6

.field public static final USES_POLICY_FORCE_LOCK:I = 0x3

.field public static final USES_POLICY_LIMIT_PASSWORD:I = 0x0

.field public static final USES_POLICY_PASSWORD_RECOVERABLE:I = 0xa

.field public static final USES_POLICY_PROFILE_OWNER:I = -0x1

.field public static final USES_POLICY_REQUIRE_STORAGECARD_ENCRYPTION:I = 0x14

.field public static final USES_POLICY_RESET_PASSWORD:I = 0x2

.field public static final USES_POLICY_SETS_GLOBAL_PROXY:I = 0x5

.field public static final USES_POLICY_SIMPLE_PASSWORD_ENABLED:I = 0x15

.field public static final USES_POLICY_WATCH_LOGIN:I = 0x1

.field public static final USES_POLICY_WIPE_DATA:I = 0x4

.field static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

.field mSupportsTransferOwnership:Z

.field mUsesPolicies:I

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v3, "wipe-data"

    const/4 v2, 0x4

    const v4, 0x104087a

    const v5, 0x104085e

    const v6, 0x104087b

    const v7, 0x104085f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v2, "reset-password"

    const/4 v3, 0x2

    const v4, 0x1040875

    const v5, 0x1040858

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v2, "limit-password"

    const/4 v3, 0x0

    const v4, 0x1040872

    const v5, 0x1040855

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v6, "watch-login"

    const/4 v5, 0x1

    const v7, 0x1040879

    const v8, 0x104085c

    const v9, 0x1040879

    const v10, 0x104085d

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "force-lock"

    const/4 v4, 0x3

    const v5, 0x1040871

    const v6, 0x1040854

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v2, "set-global-proxy"

    const/4 v4, 0x5

    const v5, 0x1040876

    const v6, 0x1040859

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "expire-password"

    const/4 v4, 0x6

    const v5, 0x1040870

    const v6, 0x1040853

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "encrypted-storage"

    const/4 v4, 0x7

    const v5, 0x104086f

    const v6, 0x1040852

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "disable-camera"

    const/16 v4, 0x8

    const v5, 0x104086c

    const v6, 0x104084f

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "disable-keyguard-features"

    const/16 v4, 0x9

    const v5, 0x104086d

    const v6, 0x1040850

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v2, "require-storagecard-encryption"

    const/16 v4, 0x14

    const v5, 0x1040874

    const v6, 0x1040857

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string/jumbo v2, "recover-password"

    const/16 v4, 0xa

    const v5, 0x1040873

    const v6, 0x1040856

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "allow-popimapemail"

    const/16 v4, 0xe

    const v5, 0x1040866

    const v6, 0x1040849

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "allow-storagecard"

    const/16 v4, 0xb

    const v5, 0x1040867

    const v6, 0x104084a

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "allow-wifi"

    const/16 v4, 0xc

    const v5, 0x104086a

    const v6, 0x104084d

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "allow-textmessaging"

    const/16 v4, 0xd

    const v5, 0x1040868

    const v6, 0x104084b

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "allow-browser"

    const/16 v4, 0xf

    const v5, 0x1040861

    const v6, 0x1040844

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "allow-internetsharing"

    const/16 v4, 0x10

    const v5, 0x1040864

    const v6, 0x1040847

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "allow-bluetoothmode"

    const/16 v4, 0x11

    const v5, 0x1040860

    const v6, 0x1040843

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "allow-desktopsync"

    const/16 v4, 0x12

    const v5, 0x1040863

    const v6, 0x1040846

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "allow-irda"

    const/16 v4, 0x13

    const v5, 0x1040865

    const v6, 0x1040848

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "allow-list-thirdparty"

    const/16 v4, 0x16

    const v5, 0x1040869

    const v6, 0x104084c

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "block-list-InRom"

    const/16 v4, 0x17

    const v5, 0x104086b

    const v6, 0x104084e

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "allow-unsignedapp"

    const/16 v4, 0x19

    const v5, 0x1040877

    const v6, 0x104085a

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "allow-unsignedinstallationpkg"

    const/16 v4, 0x1a

    const v5, 0x1040878

    const v6, 0x104085b

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_0
    move v0, v3

    sget-object v1, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v4, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/admin/DeviceAdminInfo$1;

    invoke-direct {v0}, Landroid/app/admin/DeviceAdminInfo$1;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    iput-object p2, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {p2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget v3, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    goto :goto_1

    :cond_0
    const-string v3, "DeviceAdminInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MDM tags under uses-policies of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x0

    move-object v4, v0

    :try_start_0
    iget-object v0, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const-string v5, "android.app.device_admin"

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v4, v0

    if-eqz v4, :cond_10

    iget-object v0, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_0

    const/4 v6, 0x2

    if-eq v7, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "device-admin"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    sget-object v9, Lcom/android/internal/R$styleable;->DeviceAdmin:[I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v1, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move v7, v11

    if-eq v11, v8, :cond_d

    const/4 v11, 0x3

    if-ne v7, v11, :cond_1

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v10, :cond_d

    :cond_1
    if-eq v7, v11, :cond_c

    const/4 v12, 0x4

    if-ne v7, v12, :cond_2

    nop

    move-object/from16 v17, v0

    move v0, v8

    goto/16 :goto_8

    :cond_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "uses-policies"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    :goto_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    move v7, v15

    if-eq v15, v8, :cond_8

    if-ne v7, v11, :cond_4

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v14, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v17, v0

    goto :goto_6

    :cond_4
    :goto_3
    if-eq v7, v11, :cond_7

    if-ne v7, v12, :cond_5

    nop

    move-object/from16 v17, v0

    goto :goto_5

    :cond_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    sget-object v12, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_6

    iget v11, v1, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v16

    shl-int v16, v8, v16

    or-int v11, v11, v16

    iput v11, v1, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    move-object/from16 v17, v0

    goto :goto_4

    :cond_6
    const-string v11, "DeviceAdminInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "Unknown tag under uses-policies of "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    goto :goto_5

    :cond_7
    move-object/from16 v17, v0

    :goto_5
    move-object/from16 v0, v17

    const/4 v8, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x4

    goto :goto_2

    :cond_8
    move-object/from16 v17, v0

    :cond_9
    :goto_6
    const/4 v0, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v17, v0

    const-string/jumbo v0, "support-transfer-ownership"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    goto :goto_7

    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v8, "support-transfer-ownership tag must be empty."

    invoke-direct {v0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_7
    goto :goto_8

    :cond_c
    move-object/from16 v17, v0

    move v0, v8

    :goto_8
    move v8, v0

    move-object/from16 v0, v17

    goto/16 :goto_1

    :cond_d
    if-eqz v4, :cond_e

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_e
    return-void

    :cond_f
    move-object/from16 v17, v0

    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with device-admin tag"

    invoke-direct {v0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No android.app.device_admin meta-data"

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create context for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_9
    if-eqz v4, :cond_11

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_11
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Receiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()I
    .locals 1

    iget v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    return v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagForPolicy(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedPolicies()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v3, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {p0, v3}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isProxy()Z
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "flags"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    return-void
.end method

.method public setPermissions(I)V
    .locals 0

    iput p1, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    return-void
.end method

.method public supportsTransferOwnership()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesPolicy(I)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x1b

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    const/4 v2, 0x1

    shl-int v3, v2, p1

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0
.end method

.method public writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "flags"

    iget v1, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
