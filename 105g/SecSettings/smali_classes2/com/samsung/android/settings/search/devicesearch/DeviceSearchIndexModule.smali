.class Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule;
.super Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;
.source "DeviceSearchIndexModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;,
        Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;)V

    return-void
.end method
