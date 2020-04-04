.class Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "AdditionalInformationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    instance-of v4, v3, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerHeaderViewHolder;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->access$100(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    move-result-object v4

    invoke-virtual {v4, v2, p1}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    instance-of v4, v3, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerFooterViewHolder;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->access$200(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    move-result-object v4

    invoke-virtual {v4, v2, p1}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->access$300(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
