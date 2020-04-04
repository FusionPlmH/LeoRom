.class Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;
.super Ljava/lang/Object;
.source "NavigationbarColorPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$position:I

.field final synthetic val$selectedCheck:Landroid/widget/ImageView;

.field final synthetic val$selectedRing:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;ILandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->this$1:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    iput p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->val$position:I

    iput-object p3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->val$parent:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->val$selectedRing:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->val$selectedCheck:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->val$position:I

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->access$302(I)I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->this$1:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->access$400(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_color"

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->this$1:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->access$500(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;)[I

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->val$position:I

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->this$1:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    iget-object v0, v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->access$600(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->this$1:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    iget-object v0, v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->access$700(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a04f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v3, 0x7f0a04f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a04f8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->val$selectedRing:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->val$selectedCheck:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x1d2e

    const/16 v1, 0x1d39

    iget v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid$1;->val$position:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method
