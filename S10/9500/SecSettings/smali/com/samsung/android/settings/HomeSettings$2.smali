.class Lcom/samsung/android/settings/HomeSettings$2;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/HomeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/HomeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/HomeSettings$2;->this$0:Lcom/samsung/android/settings/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/HomeSettings$2;->this$0:Lcom/samsung/android/settings/HomeSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/HomeSettings$2;->this$0:Lcom/samsung/android/settings/HomeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/HomeSettings;->access$200(Lcom/samsung/android/settings/HomeSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/HomeSettings;->uninstallApp(Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;)V

    return-void
.end method
