.class public Lcom/samsung/android/settings/display/NewModePreview$RadioAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NewModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/NewModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadioAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mSelectedIndex:I

.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/content/Context;I[Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$RadioAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    const v0, 0x7f0a0861

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/display/NewModePreview$RadioAdapter;->mSelectedIndex:I

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$RadioAdapter;->mContext:Landroid/content/Context;

    iput p5, p0, Lcom/samsung/android/settings/display/NewModePreview$RadioAdapter;->mSelectedIndex:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0861

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v1, 0x7f0a0740

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v0
.end method

.method public setSelected(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/NewModePreview$RadioAdapter;->mSelectedIndex:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview$RadioAdapter;->notifyDataSetChanged()V

    return-void
.end method
