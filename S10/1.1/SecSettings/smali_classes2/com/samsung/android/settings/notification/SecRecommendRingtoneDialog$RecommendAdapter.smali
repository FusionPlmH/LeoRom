.class public Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$RecommendAdapter;
.super Landroid/widget/BaseAdapter;
.source "SecRecommendRingtoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecommendAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$RecommendAdapter;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$RecommendAdapter;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$900(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0246

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x1020015

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x1020019

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    if-nez p1, :cond_1

    const v5, 0x7f121480

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const v5, 0x7f12135b

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f12135c

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog$RecommendAdapter;->this$0:Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;->access$000(Lcom/samsung/android/settings/notification/SecRecommendRingtoneDialog;)I

    move-result v5

    if-ne p1, v5, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object v1
.end method
