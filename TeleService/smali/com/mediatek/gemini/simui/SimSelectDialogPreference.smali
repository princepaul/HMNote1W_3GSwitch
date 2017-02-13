.class public Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
.super Landroid/preference/DialogPreference;
.source "SimSelectDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimSelectDialogPreference"


# instance fields
.field private mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

.field private mClickedDialogEntryIndex:I

.field private mContext:Landroid/content/Context;

.field private mEnableNormalItem:Z

.field private mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mIsEnaled:Z

.field private mItemStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mNormalItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimIndicators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSimItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEntryValues:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimIndicators:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    .line 49
    sget-object v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->RadioButton:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mWidgetType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 50
    iput-boolean v1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEnableNormalItem:Z

    .line 53
    iput-boolean v1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIsEnaled:Z

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setPersistent(Z)V

    .line 69
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;-><init>(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;

    return-object v0
.end method

.method private findIndexOfValue(J)I
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 177
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEntryValues:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEntryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEntryValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 178
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getPrefSummary(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 158
    const/4 v3, 0x0

    .line 159
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v4, p1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "item":Ljava/lang/Object;
    instance-of v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 161
    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 162
    .local v2, "simItem":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v3, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 167
    .end local v2    # "simItem":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    :goto_0
    return-object v3

    .line 163
    :cond_1
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 164
    check-cast v1, Ljava/lang/String;

    .line 165
    .local v1, "nonSimItem":Ljava/lang/String;
    move-object v3, v1

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getTotalItemCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIsEnaled:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->notifyDataSetChanged()V

    .line 240
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .param p1, "positiveResult"    # Z

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 205
    const-string v2, "SimSelectDialogPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "positiveResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mClickedDialogEntryIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    iget v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mClickedDialogEntryIndex:I

    if-eq v2, v3, :cond_0

    .line 210
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEntryValues:Ljava/util/List;

    iget v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mClickedDialogEntryIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 212
    .local v0, "simId":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mClickedDialogEntryIndex:I

    iput v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    .line 214
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->notifyDataSetChanged()V

    .line 217
    .end local v0    # "simId":J
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iput p3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mClickedDialogEntryIndex:I

    .line 357
    const-string v0, "SimSelectDialogPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick and click item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 363
    invoke-virtual {p0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 365
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 190
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mListView:Landroid/widget/ListView;

    .line 192
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 198
    :goto_0
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    return-void

    .line 196
    :cond_0
    const-string v0, "SimSelectDialogPreference"

    const-string v1, "Error with null adapter"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEnableNormalItem(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEnableNormalItem:Z

    .line 155
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->notifyDataSetChanged()V

    .line 156
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 223
    if-eqz p1, :cond_0

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 228
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setEnabled(Z)V

    .line 229
    iput-boolean p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIsEnaled:Z

    .line 230
    return-void

    .line 223
    :cond_0
    const/16 v1, 0x4b

    goto :goto_0

    .line 226
    :cond_1
    const-string v1, "SimSelectDialogPreference"

    const-string v2, "fail to set icon alpha due to icon is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setEntriesData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "simValues":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    .local p2, "indicator":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "lable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "itemStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;

    .line 97
    iput-object p3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;

    .line 98
    iput-object p2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimIndicators:Ljava/util/List;

    .line 99
    iput-object p4, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mItemStatus:Ljava/util/List;

    .line 100
    return-void
.end method

.method public setEntryValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEntryValues:Ljava/util/List;

    .line 130
    return-void
.end method

.method public setValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->findIndexOfValue(J)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    .line 142
    iget v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    if-ltz v0, :cond_0

    .line 143
    iget v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->getPrefSummary(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->notifyDataSetChanged()V

    .line 151
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setWidgetType(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V
    .locals 0
    .param p1, "type"    # Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mWidgetType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 89
    return-void
.end method

.method public updateSimIndicator(II)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "indicator"    # I

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, "listIndex":I
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 110
    .local v1, "item":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v3, p1, :cond_0

    .line 111
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimIndicators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimIndicators:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->notifyDataSetChanged()V

    .line 116
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "item":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    return-void
.end method

.method public updateSimInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "simValues":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mAdapter:Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method
