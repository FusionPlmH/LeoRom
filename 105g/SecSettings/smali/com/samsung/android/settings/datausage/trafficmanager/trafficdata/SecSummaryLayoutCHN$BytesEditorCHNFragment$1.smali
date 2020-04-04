.class Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$BytesEditorCHNFragment$1;
.super Ljava/lang/Object;
.source "SecSummaryLayoutCHN.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$BytesEditorCHNFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$BytesEditorCHNFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$BytesEditorCHNFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$BytesEditorCHNFragment$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$BytesEditorCHNFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$BytesEditorCHNFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "SummaryPreferenceCHN"

    const-string/jumbo v1, "the third added for the usedEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$BytesEditorCHNFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$BytesEditorCHNFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$BytesEditorCHNFragment$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    return-void
.end method
