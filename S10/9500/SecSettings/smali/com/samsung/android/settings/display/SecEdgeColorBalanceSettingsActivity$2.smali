.class Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$2;
.super Ljava/lang/Object;
.source "SecEdgeColorBalanceSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$2;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x1d21

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$2;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->access$300(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$2;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->access$400(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$2;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->access$500(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    :goto_0
    return-void
.end method
