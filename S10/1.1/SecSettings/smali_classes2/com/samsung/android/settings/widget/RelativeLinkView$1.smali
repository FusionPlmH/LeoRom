.class Lcom/samsung/android/settings/widget/RelativeLinkView$1;
.super Ljava/lang/Object;
.source "RelativeLinkView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field final synthetic val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/RelativeLinkView;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/RelativeLinkView$1;->this$0:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/RelativeLinkView$1;->val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView$1;->this$0:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-static {v0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->access$000(Lcom/samsung/android/settings/widget/RelativeLinkView;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView$1;->this$0:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-static {v0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->access$000(Lcom/samsung/android/settings/widget/RelativeLinkView;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView$1;->this$0:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/RelativeLinkView$1;->val$linkData:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->startFooterViewLink(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    return-void
.end method
