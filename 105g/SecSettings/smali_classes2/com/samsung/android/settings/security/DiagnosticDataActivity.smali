.class public Lcom/samsung/android/settings/security/DiagnosticDataActivity;
.super Landroid/app/Activity;
.source "DiagnosticDataActivity.java"


# instance fields
.field private mDiagnosticInfoText:Landroid/widget/TextView;

.field private mScrollView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DiagnosticDataActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f0d0175

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/DiagnosticDataActivity;->setContentView(I)V

    const v0, 0x7f0a0247

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/DiagnosticDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/security/DiagnosticDataActivity;->mDiagnosticInfoText:Landroid/widget/TextView;

    const v0, 0x7f0a0248

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/DiagnosticDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/DiagnosticDataActivity;->mScrollView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/security/DiagnosticDataActivity;->mScrollView:Landroid/view/View;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/security/DiagnosticDataActivity;->mScrollView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DiagnosticDataActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    sget-object v0, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAG_GET:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getStringByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/DiagnosticDataActivity;->mDiagnosticInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "DiagnosticDataActivity"

    const-string v1, "onOptionsItemSelected() up button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DiagnosticDataActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
