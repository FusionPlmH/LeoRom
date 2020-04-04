.class public Lcom/samsung/android/settings/bixby/actions/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/settings/bixby/actions/Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/actions/Location;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/actions/Location;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doSetAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "fail"

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actions/Location;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/location/LocationEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/actions/Location;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    nop

    nop

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    const-string/jumbo v0, "success"

    return-object v0
.end method
