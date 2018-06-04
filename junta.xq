<total> &#xa;
{
for $v in doc("dir.xml")//collection/doc
let $l:=doc($v/@href)
return <rss> &#xa;
<channel> &#xa;
<title>{$l/rss/channel/title/text()}</title> &#xa;
<description>{$l/rss/channel/description/text()}</description> &#xa;
<link>{$l/rss/channel/link/text()}</link> &#xa;
{
for $item in $l/rss/channel/item
return <item> &#xa;
<title>{$item/title/text()}</title> &#xa;
<link>{$item/link/text()}</link> &#xa;
</item>
}
</channel> &#xa;
</rss> 
}
</total>