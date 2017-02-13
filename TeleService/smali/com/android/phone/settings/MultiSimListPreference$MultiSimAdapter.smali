.class Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiSimListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/MultiSimListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSimAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisableName:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/settings/MultiSimListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/MultiSimListPreference;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 153
    iput-object p2, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->mContext:Landroid/content/Context;

    .line 154
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 155
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->mDisableName:Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->getItem(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lmiui/telephony/SubscriptionInfo;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    # getter for: Lcom/android/phone/settings/MultiSimListPreference;->mHasDoNotSet:Z
    invoke-static {v0}, Lcom/android/phone/settings/MultiSimListPreference;->access$100(Lcom/android/phone/settings/MultiSimListPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    # getter for: Lcom/android/phone/settings/MultiSimListPreference;->mHasDoNotSet:Z
    invoke-static {v0}, Lcom/android/phone/settings/MultiSimListPreference;->access$100(Lcom/android/phone/settings/MultiSimListPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    # getter for: Lcom/android/phone/settings/MultiSimListPreference;->mSimInfoRecordList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/phone/settings/MultiSimListPreference;->access$200(Lcom/android/phone/settings/MultiSimListPreference;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    # getter for: Lcom/android/phone/settings/MultiSimListPreference;->mSimInfoRecordList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/phone/settings/MultiSimListPreference;->access$200(Lcom/android/phone/settings/MultiSimListPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 174
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 188
    if-nez p2, :cond_0

    .line 189
    iget-object v4, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040027

    invoke-virtual {v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 190
    new-instance v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;

    invoke-direct {v3, p0, v9}, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;-><init>(Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;Lcom/android/phone/settings/MultiSimListPreference$1;)V

    .line 191
    .local v3, "viewHolder":Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;
    const v4, 0x7f07006f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    iput-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    .line 193
    const v4, 0x7f070070

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simIcon:Landroid/widget/ImageView;

    .line 194
    const v4, 0x7f070071

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simNumber:Landroid/widget/TextView;

    .line 195
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->getItem(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    .line 201
    .local v1, "simInfo":Lmiui/telephony/SubscriptionInfo;
    if-nez v1, :cond_2

    .line 202
    iget-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    const v5, 0x7f0b04d4

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 203
    iget-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    sget v4, Lcom/android/phone/settings/MultiSimListPreference;->DO_NOT_SET:I

    iget-object v5, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v5}, Lcom/android/phone/settings/MultiSimListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 206
    iget-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 233
    :goto_1
    return-object p2

    .line 197
    .end local v1    # "simInfo":Lmiui/telephony/SubscriptionInfo;
    .end local v3    # "viewHolder":Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;
    goto :goto_0

    .line 208
    .restart local v1    # "simInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    iget-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->mDisableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_3
    iget-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    # getter for: Lcom/android/phone/settings/MultiSimListPreference;->SMALL_SIM_SLOT_ICON:[I
    invoke-static {}, Lcom/android/phone/settings/MultiSimListPreference;->access$500()[I

    move-result-object v4

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    aget v2, v4, v5

    .line 217
    .local v2, "slotResId":I
    if-lez v2, :cond_4

    .line 218
    iget-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    :goto_2
    iget-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v5}, Lcom/android/phone/settings/MultiSimListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 227
    iget-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 220
    :cond_4
    iget-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 229
    :cond_5
    iget-object v4, v3, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    # getter for: Lcom/android/phone/settings/MultiSimListPreference;->mHasDoNotSet:Z
    invoke-static {v0}, Lcom/android/phone/settings/MultiSimListPreference;->access$100(Lcom/android/phone/settings/MultiSimListPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 182
    .end local p1    # "position":I
    :goto_0
    return v0

    .restart local p1    # "position":I
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    # getter for: Lcom/android/phone/settings/MultiSimListPreference;->mHasDoNotSet:Z
    invoke-static {v1}, Lcom/android/phone/settings/MultiSimListPreference;->access$100(Lcom/android/phone/settings/MultiSimListPreference;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .end local p1    # "position":I
    :cond_1
    # invokes: Lcom/android/phone/settings/MultiSimListPreference;->isRadioInOn(I)Z
    invoke-static {v0, p1}, Lcom/android/phone/settings/MultiSimListPreference;->access$300(Lcom/android/phone/settings/MultiSimListPreference;I)Z

    move-result v0

    goto :goto_0
.end method
