.class Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimSelectDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimDialogAdapter"
.end annotation


# static fields
.field private static final NUM_WIDTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimCardAdapter"

.field private static final TYPE_NORMAL_ITEM:I = 0x1

.field private static final TYPE_SIM_ITEM:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPaddingEnd:I

.field private mPaddingStart:I

.field final synthetic this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;


# direct methods
.method public constructor <init>(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 258
    iput-object p2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mContext:Landroid/content/Context;

    .line 259
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 260
    return-void
.end method

.method private hideViewForNoSimItem(Lcom/mediatek/gemini/simui/SimInfoViewUtil;)V
    .locals 2
    .param p1, "view"    # Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    .prologue
    const/16 v1, 0x8

    .line 346
    iget-object v0, p1, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 347
    iget-object v0, p1, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v0, p1, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimShortNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, p1, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$000(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$000(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 271
    .local v1, "simCount":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$100(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$100(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 272
    .local v0, "normalCount":I
    :goto_1
    add-int v2, v1, v0

    return v2

    .end local v0    # "normalCount":I
    .end local v1    # "simCount":I
    :cond_0
    move v1, v2

    .line 270
    goto :goto_0

    .restart local v1    # "simCount":I
    :cond_1
    move v0, v2

    .line 271
    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "object":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 279
    .local v1, "size":I
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$000(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$000(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 280
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$000(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .end local v0    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 282
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$100(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    sub-int v2, p1, v1

    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$100(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 283
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$100(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v2

    sub-int v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 291
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 341
    return-object p2
.end method

.method public setPadding(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mPaddingStart:I

    .line 264
    iput p2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mPaddingEnd:I

    .line 265
    const-string v0, "SimCardAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPadding mPaddingStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mPaddingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPaddingEnd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mPaddingEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method
