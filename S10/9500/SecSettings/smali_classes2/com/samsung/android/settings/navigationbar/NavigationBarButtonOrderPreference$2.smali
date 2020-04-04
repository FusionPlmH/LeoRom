.class Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;
.super Ljava/lang/Object;
.source "NavigationBarButtonOrderPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0a056c

    const/16 v2, 0x1d3b

    const/16 v3, 0x1d2e

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a067c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_key_order"

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-wide/16 v0, 0x1

    invoke-static {v3, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_key_order"

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-wide/16 v0, 0x0

    invoke-static {v3, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_2
    :goto_0
    return-void
.end method
