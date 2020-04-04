.class Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;
.super Ljava/lang/Object;
.source "DeviceSearchIndexModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceSearchData"
.end annotation


# instance fields
.field mDescription:Ljava/lang/String;

.field mIcon:Landroid/net/Uri;

.field mIntent:Landroid/content/Intent;

.field mMenuPath:Ljava/lang/String;

.field mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mMenuPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mIcon:Landroid/net/Uri;

    iput-object p5, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Intent;Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Intent;)V

    return-void
.end method
